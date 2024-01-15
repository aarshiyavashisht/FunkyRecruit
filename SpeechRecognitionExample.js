// SpeechRecognitionExample.js
import React, { useState, useEffect } from 'react';
import SpeechToText from './Speechtotext';

const SpeechRecognitionExample = () => {
  const [userInput, setUserInput] = useState('');

  const handleUserInput = (text) => {
    setUserInput(text);
  };

  useEffect(() => {
    console.log('User input:', userInput);
    // You can perform additional logic with the user input here
  }, [userInput]);

  return (
    <div>
      <h1>Speech Recognition Example</h1>
      <SpeechToText onUserInput={handleUserInput} />
    </div>
  );
};

export default SpeechRecognitionExample;
