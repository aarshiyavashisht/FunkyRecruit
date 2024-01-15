import React, { useState, useEffect, useRef } from 'react';
import SpeechRecognition, { useSpeechRecognition } from 'react-speech-recognition';

const QuesList = () => {
  const [tableNames, setTableNames] = useState([]);
  const [techStack, setTechStack] = useState('');
  const [numQuestions, setNumQuestions] = useState(0);
  const [questions, setQuestions] = useState([]);
  const [userResponses, setUserResponses] = useState([]);
  const [currentQuestionIndex, setCurrentQuestionIndex] = useState(0);
  const [isAudioPlaying, setIsAudioPlaying] = useState(false);
  const [finalResultsMap, setFinalResultsMap] = useState({});
  const [feedbackArray, setFeedbackArray] = useState([]);
  const [isResultsSubmitted, setIsResultsSubmitted] = useState(false);
  const [comparisonResults, setComparisonResults] = useState({});
  const spokenTextsRef = useRef([]);

  const { transcript, resetTranscript, listening } = useSpeechRecognition();

  useEffect(() => {
    spokenTextsRef.current = [];
  }, [questions]); // Reset spokenTextsRef when questions change

  //transcribe and listen iteratively
  useEffect(() => {
    if (transcript && !listening) {
      const updatedResponses = [...userResponses, transcript];
      setUserResponses(updatedResponses);
      resetTranscript();

      setCurrentQuestionIndex((prevIndex) => {
        const newIndex = prevIndex + 1;

        if (newIndex < questions.length) {
          const currentQuestion = questions[newIndex];
          if (!spokenTextsRef.current.includes(currentQuestion.question_text)) {
            handleSpeak(currentQuestion.question_text);
            spokenTextsRef.current.push(currentQuestion.question_text);
          }
        } else if (newIndex === questions.length) {
          if (!spokenTextsRef.current.includes("Thank you for answering the questions! Your responses are:")) {
            handleSpeak("Thank you for answering the questions! Your responses are: " + updatedResponses.join(', '));
            spokenTextsRef.current.push("Thank you for answering the questions! Your responses are:");
          }

          const updatedResultsMap = {};
          questions.forEach((q, index) => {
            updatedResultsMap[q.question_id] = {
              question_id: q.question_id,
              question_text: q.question_text,
              answer_text: q.answer_text,
              user_response: updatedResponses[index] || "No response",
              difficulty_level: q.difficulty_level,
            };
          });
          setFinalResultsMap(updatedResultsMap);
        }

        return newIndex < questions.length ? newIndex : prevIndex;
      });

      setIsAudioPlaying(true);
    }
  }, [transcript, listening, questions, resetTranscript, currentQuestionIndex, userResponses]);

  useEffect(() => {
    if (!listening) {
      setIsAudioPlaying(false);
    }
  }, [listening]);

  useEffect(() => {
    const video = document.querySelector('.videoTag');
    if (video) {
      if (!isAudioPlaying) {
        video.pause();
      } else {
        video.play();
      }
    }
  }, [isAudioPlaying]);

  const handleSpeak = (text) => {
    const chunkSize = 150;
    const chunks = [];

    for (let i = 0; i < text.length; i += chunkSize) {
      chunks.push(text.slice(i, i + chunkSize));
    }

    const playChunk = (index) => {
      if (index < chunks.length) {
        const utterance = new SpeechSynthesisUtterance(chunks[index]);

        const voices = window.speechSynthesis.getVoices();
        const femaleVoice = voices.find((voice) => voice.name.toLowerCase().includes('female'));

        if (femaleVoice) {
          utterance.voice = femaleVoice;
        }

        utterance.onstart = () => setIsAudioPlaying(true);
        utterance.onend = () => {
          setIsAudioPlaying(false);
          playChunk(index + 1);
        };

        window.speechSynthesis.speak(utterance);
      }
    };

    playChunk(0);
  };

  const startListening = () => {
    resetTranscript();
    SpeechRecognition.startListening();
  };

  const fetchQuestions = async () => {
    try {
      const response = await fetch('http://localhost:5000/generateQuestions', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ techStack, totalQuestions: numQuestions }),
      });

      if (!response.ok) {
        throw new Error('Network response was not ok');
      }

      const data = await response.json();
      setQuestions(data.questions);
      setUserResponses([]);
      setCurrentQuestionIndex(0);
      handleSpeak(data.questions[0].question_text);
    } catch (error) {
      console.error('Error fetching questions:', error.message);
    }
  };

  const fetchTableNames = async () => {
    try {
      const response = await fetch('http://localhost:5000/getTableNames');
      if (!response.ok) {
        throw new Error('Network response was not ok');
      }
      const data = await response.json();
      setTableNames(data.tableNames);
    } catch (error) {
      console.error('Error fetching table names:', error.message);
    }
  };

  useEffect(() => {
    fetchTableNames();
  }, []); // Fetch table names when the component mounts

  const submitResultsToServer = async () => {
    try {
      if (finalResultsMap && questions.length > 0 && !isResultsSubmitted) {
        const resultsArray = Object.values(finalResultsMap).map((result) => ({
          question_id: result.question_id,
          question_text: result.question_text,
          answer_text: result.answer_text,
          difficulty_level: result.difficulty_level,
          user_response: result.user_response,
        }));

        const response = await fetch('http://localhost:5000/submitResults', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({ resultsArray }),
        });

        if (!response.ok) {
          throw new Error('Network response was not ok');
        }

        const feedbackData = await response.json();

        console.log('Results submitted successfully!');

        setFeedbackArray(feedbackData.feedbackArray);

        for (const feedback of feedbackData.feedbackArray) {
          console.log("Feedback for ${feedback.question_text}: ${feedback.feedback}");
        }
      } else {
        console.error("No results to submit. Fetch and answer questions first.");
      }
    } catch (error) {
      console.error('Error submitting results to server:', error.message);
    }
  };

  const submitResultsManually = () => {
    if (finalResultsMap && questions.length > 0 && !isResultsSubmitted) {
      submitResultsToServer(finalResultsMap, questions);
    } else {
      console.error('No results to submit. Fetch and answer questions first.');
    }
  };

  return (
    <div>
    <h1>Random Questions</h1>
    <label>
      Choose a tech stack:
      <select value={techStack} onChange={(e) => setTechStack(e.target.value)}>
        <option value="">Select a table</option>
        {tableNames.map((tableName) => (
          <option key={tableName} value={tableName}>
            {tableName}
          </option>
        ))}
      </select>
    </label>
      <br />
      <label>
        Enter the total number of questions:
        <input
          type="number"
          value={numQuestions}
          onChange={(e) => {
            const value = parseInt(e.target.value, 10);
            setNumQuestions(isNaN(value) ? 0 : value);
          }}
        />
      </label>
      <br />
      <button onClick={fetchQuestions}>Fetch Questions</button>
  
      <ul>
        {questions.map((question, index) => (
          <li key={index}>
            <strong>Question Text:</strong> {question.question_text}
          </li>
        ))}
      </ul>
      <div>
        <p>User's Response:</p>
        <ul>
          {userResponses.map((response, index) => (
            <li key={index}>{response}</li>
          ))}
        </ul>
      </div>
      {currentQuestionIndex !== questions.length && (
        <button
          onClick={startListening}
          disabled={!SpeechRecognition.browserSupportsSpeechRecognition() || currentQuestionIndex === questions.length}
        >
          Start Listening
        </button>
      )}

      {finalResultsMap && !isResultsSubmitted && (
        <div>
          <h2>Final Results</h2>
          <ul>
            {Object.values(finalResultsMap).map((result, index) => (
              <li key={index}>
                <strong>Question ID:</strong> {result.question_id}
                <br />
                <strong>Question Text:</strong> {result.question_text}
                <br />
                <strong>Answer Text:</strong> {result.answer_text}
                <br />
                <strong>Difficulty Level:</strong> {result.difficulty_level}
                <br />
                <strong>User Response:</strong> {result.user_response}
              </li>
            ))}
          </ul>
          <button onClick={submitResultsToServer}>Submit Results to Server</button>
        </div>
      )}

      {feedbackArray.length > 0 && (
        <div>
          <h2>Feedback Results</h2>
          <ul>
            {feedbackArray.map((feedback, index) => (
              <li key={index}>
                <strong>Question Text:</strong> {feedback.question_text}
                <br />
                <strong>Feedback:</strong> {feedback.feedback}
              </li>
            ))}
          </ul>
        </div>
      )}

      {Object.values(comparisonResults).length > 0 && (
        <div>
          <h2>Comparison Results</h2>
          <ul>
            {Object.values(comparisonResults).map((result, index) => (
              <li key={index}>
                <strong>Question ID:</strong> {result.questionId}
                <br />
                <strong>Comparison Result:</strong> {result.comparisonResult}
              </li>
            ))}
          </ul>
        </div>
      )}
    </div>
  );
};

export default QuesList;