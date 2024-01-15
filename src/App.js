import React from 'react';
import "./App.css";
import sample from "./fe.mp4";
import QuesList from "./QuesList";

function App() {
  return (
    <div className="App">
      <video className="videoTag" autoPlay loop muted>
        <source src={sample} type="video/mp4" />
      </video>
      <div className="overlay">
        <QuesList />
      </div>
    </div>
  );
}

export default App;
