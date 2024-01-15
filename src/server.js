const express = require('express');
const { exec } = require('child_process');
const cors = require('cors');

const app = express();
const PORT = 5000;

app.use(express.json());
app.use(cors());

// Existing endpoint for generating questions
app.post('/generateQuestions', (req, res) => {
  const { techStack, totalQuestions } = req.body;

  const command = `python main.py --techStack=${techStack} --totalQuestions=${totalQuestions}`;

  exec(command, (error, stdout, stderr) => {
    if (error) {
      console.error(`Error: ${error.message}`);
      return res.status(500).json({ error: 'Internal Server Error' });
    }
    if (stderr) {
      console.error(`stderr: ${stderr}`);
    }
    const questions = JSON.parse(stdout);
    res.json({ questions });
  });
});

// Updated route to handle submitted results array and compare iteratively
app.post('/submitResults', async (req, res) => {
  const { resultsArray } = req.body;
  const feedbackArray = [];

  // Process the submitted results array iteratively
  for (const result of resultsArray) {
    const { question_text, user_response, answer_text } = result;

    // Construct command to call compare.py
    const command = `python compare.py "${user_response}" "${answer_text}" "${question_text}"`;

    // Wrap the exec call in a Promise for better handling
    const executeCommand = () => {
      return new Promise((resolve, reject) => {
        exec(command, (error, stdout, stderr) => {
          if (error) {
            console.error(`Error: ${error.message}`);
            reject(error);
          }
          if (stderr) {
            console.error(`stderr: ${stderr}`);
          }

          const comparisonResult = stdout.trim().toLowerCase();
          console.log(`Comparison Result for ${question_text}: ${comparisonResult}`);
          console.log(`User Response: ${user_response}`);
          console.log(`Correct Answer: ${answer_text}`);
          console.log(`Question Text: ${question_text}`);
          console.log(); // Add a line break for better readability

          // Add feedback to the array
          feedbackArray.push({
            question_text,
            feedback: comparisonResult, // Assuming the feedback is the comparison result
          });
          resolve();
        });
      });
    };

    // Execute the command asynchronously
    try {
      await executeCommand();
    } catch (error) {
      return res.status(500).json({ error: 'Internal Server Error' });
    }
  }

  // Send a response back to the client with the feedback array
  res.json({ success: true, message: 'Comparison results received successfully!', feedbackArray });
});


app.get('/getTableNames', (req, res) => {
  const command = 'python main.py --getTableNames';

  exec(command, (error, stdout, stderr) => {
    if (error) {
      console.error(`Error: ${error.message}`);
      return res.status(500).json({ error: 'Internal Server Error' });
    }
    if (stderr) {
      console.error(`stderr: ${stderr}`);
    }
    const tableNames = JSON.parse(stdout).tableNames;
    res.json({ tableNames });
  });
});



app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
