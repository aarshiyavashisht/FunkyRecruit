import React from 'react';

const MyIframeComponent = () => {
  return (
    <div style={{ width: '100%', height: '100vh', overflow: 'hidden' }}>
      <iframe
        title="Embedded HTML Page"
        src="http://127.0.0.1:5000"
        width="100%"
        height="100%"
        frameBorder="0"
        style={{ border: 'none' }}
      />
    </div>
  );
};

export default MyIframeComponent;
