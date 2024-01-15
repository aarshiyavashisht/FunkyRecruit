// Function to fetch tables from the server
function fetchTables() {
  fetch("/get_tables")
    .then((response) => response.json())
    .then((data) => {
      // Update the dropdown options with fetched tables
      const tableDropdown = document.getElementById("selectedTable");
      tableDropdown.innerHTML = ""; // Clear existing options
      data.tables.forEach((table) => {
        const option = document.createElement("option");
        option.value = table;
        option.text = table;
        tableDropdown.appendChild(option);
      });
    })
    .catch((error) => {
      console.error("Error fetching tables:", error);
    });
}

// Function to add a new topic
function addTopic() {
  var topicName = document.getElementById("topicName").value;
  // Validate if topicName is not empty
  if (topicName.trim() === "") {
    alert("Please enter a valid topic name.");
    return;
  }

  // Confirm with the user before proceeding with adding the topic
  var confirmation = confirm("Are you sure you want to add this topic?");
  if (!confirmation) {
    return; // User canceled the operation
  }

  // Send an AJAX request to the server to add the topic
  fetch("/add_topic", {
    method: "POST",
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
    body: new URLSearchParams({
      topicName: topicName,
    }),
  })
    .then((response) => response.text())
    .then((message) => {
      alert(message); // Display the server response
      // Fetch tables again to update the dropdown
      fetchTables();
    })
    .catch((error) => {
      console.error("Error adding topic:", error);
    });
}

// Function to add a new question
function addQuestion() {
  var selectedTable = document.getElementById("selectedTable").value;
  var question = document.getElementById("question").value;
  var answer = document.getElementById("answer").value;
  var difficulty = document.getElementById("difficulty").value;

  // Validate if any of the fields are empty
  if (
    question.trim() === "" ||
    answer.trim() === "" ||
    difficulty.trim() === ""
  ) {
    alert("Please fill in all fields.");
    return;
  }

  // Confirm with the user before proceeding with adding the question
  var confirmation = confirm("Are you sure you want to add this question?");
  if (!confirmation) {
    return; // User canceled the operation
  }

  // Send an AJAX request to the server to add the question
  fetch("/add_question", {
    method: "POST",
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
    body: new URLSearchParams({
      questionTable: selectedTable,
      question: question,
      answer: answer,
      difficulty: difficulty,
    }),
  })
    .then((response) => response.text())
    .then((message) => {
      alert(message); // Display the server response
    })
    .catch((error) => {
      console.error("Error adding question:", error);
    });
}

// see question

function seeQuestion() {
  var selectedTable = document.getElementById("selectedTable").value;
  var selectedDifficulty = document.getElementById("difficulty").value;
  var selectedQuestionId = document.getElementById("questionId").value;

  // Send an AJAX request to the server to fetch specific question content
  fetch("/get_specific_question", {
      method: "POST",
      headers: {
          "Content-Type": "application/x-www-form-urlencoded",
      },
      body: new URLSearchParams({
          tableName: selectedTable,
          difficulty: selectedDifficulty,
          questionId: selectedQuestionId,
      }),
  })
      .then((response) => response.json())
      .then((data) => {
          // Access the questionResult div and update its content
          var questionResultDiv = document.getElementById("questionResult");
          questionResultDiv.innerHTML = ""; // Clear existing content

          // Display the specific question(s) in a styled table
          if (data.length > 0) {
              // Create the table element with styling
              var table = document.createElement("table");
              table.style.borderCollapse = "collapse";
              table.style.width = "100%";

              // Create table header with styling
              var headerRow = table.insertRow(0);
              var headerCell1 = headerRow.insertCell(0);
              var headerCell2 = headerRow.insertCell(1);
              var headerCell3 = headerRow.insertCell(2);
              headerCell1.textContent = "Question";
              headerCell2.textContent = "Answer";
              headerCell3.textContent = "Difficulty";
              headerRow.style.borderBottom = "2px solid #ddd";

              // Populate table rows with data and styling
              for (var i = 0; i < data.length; i++) {
                  var questionData = data[i];
                  var row = table.insertRow(i + 1);
                  var cell1 = row.insertCell(0);
                  var cell2 = row.insertCell(1);
                  var cell3 = row.insertCell(2);

                  cell1.textContent = questionData.question;
                  cell2.textContent = questionData.answer;
                  cell3.textContent = questionData.difficulty;

                  // Add the class for styling to the table cells
                  cell1.classList.add("question-table-cell");
                  cell2.classList.add("question-table-cell");
                  cell3.classList.add("question-table-cell");

                  // Add some styling to the table cells
                  row.style.borderBottom = "1px solid #ddd";
              }

              // Append the table to the questionResultDiv
              questionResultDiv.appendChild(table);

              // Toggle the visibility of the question list
              questionResultDiv.style.display = questionResultDiv.style.display === "none" ? "block" : "none";
          } else {
              questionResultDiv.textContent = "No matching questions found.";
              // Hide the question list
              questionResultDiv.style.display = "none";
          }
      })
      .catch((error) => {
          console.error("Error fetching specific question:", error);
      });
}




// show table content

function toggleTableVisibility() {
  var selectedTable = document.getElementById("selectedTable").value;

  // Access the displaytable div
  var displayTableDiv = document.getElementById("displaytable");
  var closeButton = document.getElementById("closeTable");

  // If the table is currently visible, hide it
  if (displayTableDiv.classList.contains("visible")) {
    displayTableDiv.classList.remove("visible");
    displayTableDiv.innerHTML = ""; // Clear existing content
    closeButton.style.display = "none"; // Hide the close button
    return;
  }
  // Send an AJAX request to the server to fetch table content
  fetch("/get_table_content", {
    method: "POST",
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
    body: new URLSearchParams({
      tableName: selectedTable,
    }),
  })
    .then((response) => response.json())
    .then((data) => {
      // Clear existing content
      displayTableDiv.innerHTML = "";

      // Create a table element
      var table = document.createElement("table");

      // Create the header row
      var headerRow = table.createTHead().insertRow(0);
      var headerCell1 = headerRow.insertCell(0);
      var headerCell2 = headerRow.insertCell(1);
      var headerCell3 = headerRow.insertCell(2);
      var headerCell4 = headerRow.insertCell(3);
      headerCell1.textContent = "Question ID";
      headerCell2.textContent = "Question Text";
      headerCell3.textContent = "Answer Text";
      headerCell4.textContent = "Difficulty Level";

      // Create rows with data
      for (var i = 0; i < data.rows.length; i++) {
        var row = table.insertRow(i + 1);

        // Extract data from the rows
        var questionData = data.rows[i];

        // Create cells for each column
        var cell1 = row.insertCell(0);
        var cell2 = row.insertCell(1);
        var cell3 = row.insertCell(2);
        var cell4 = row.insertCell(3);

        // Populate cells with data
        cell1.textContent = questionData.id;
        cell2.textContent = questionData.question;
        cell3.textContent = questionData.answer;
        cell4.textContent = questionData.difficulty;

        // Add some styling to the table cells (if needed)
        row.style.borderBottom = "1px solid #ddd";
        cell1.style.padding = "8px";
        cell2.style.padding = "8px";
        cell3.style.padding = "8px";
        cell4.style.padding = "8px";
      }

      // Append the table to the displaytable div
      displayTableDiv.appendChild(table);

      // Show the close button
      closeButton.style.display = "inline-block";

      // Add a class to make the table visible
      displayTableDiv.classList.add("visible");
    })
    .catch((error) => {
      console.error("Error fetching table content:", error);
    });
}

function closeTable() {
  var displayTableDiv = document.getElementById("displaytable");
  var closeButton = document.getElementById("closeTable");

  // Hide the table and the close button
  displayTableDiv.classList.remove("visible");
  displayTableDiv.innerHTML = "";
  closeButton.style.display = "none";
}

// Function to update the name of an existing topic
function updateTopicName() {
  var oldTopicName = document.getElementById("oldTopicName").value;
  var newTopicName = document.getElementById("newTopicName").value;

  // Validate if any of the fields are empty
  if (oldTopicName.trim() === "" || newTopicName.trim() === "") {
    alert("Please fill in all fields.");
    return;
  }

  // Confirm with the user before proceeding with the update
  var confirmation = confirm("Are you sure you want to update this topic?");
  if (!confirmation) {
    return; // User canceled the operation
  }

  // Send an AJAX request to the server to update the topic name
  fetch("/update_topic_name", {
    method: "POST",
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
    body: new URLSearchParams({
      oldTopicName: oldTopicName,
      newTopicName: newTopicName,
    }),
  })
    .then((response) => response.text())
    .then((message) => {
      alert(message); // Display the server response
      // Fetch tables again to update the dropdown
      fetchTables();
    })
    .catch((error) => {
      console.error("Error updating topic name:", error);
    });
}

// Function to delete an existing topic
function deleteTopic() {
  var topicToDelete = document.getElementById("topicToDelete").value;

  // Validate if topicToDelete is not empty
  if (topicToDelete.trim() === "") {
    alert("Please enter a valid topic name.");
    return;
  }

  // Confirm with the user before proceeding with the deletion
  var confirmation = confirm("Are you sure you want to delete this topic?");
  if (!confirmation) {
    return; // User canceled the operation
  }

  // Send an AJAX request to the server to delete the topic
  fetch("/delete_topic", {
    method: "POST",
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
    body: new URLSearchParams({
      topicToDelete: topicToDelete,
    }),
  })
    .then((response) => response.text())
    .then((message) => {
      alert(message); // Display the server response
      // Fetch tables again to update the dropdown
      fetchTables();
    })
    .catch((error) => {
      console.error("Error deleting topic:", error);
    });
}






// ... (your existing code) ...

// Function to update a question
function updateQuestion() {
  var selectedTable = document.getElementById("selectedTable").value;
  var questionIdToUpdate = document.getElementById("questionIdToUpdate").value;
  var updatedQuestion = document.getElementById("updatedQuestion").value;
  var updatedAnswer = document.getElementById("updatedAnswer").value;
  var updatedDifficulty = document.getElementById("updatedDifficulty").value;

  // Validate if any of the fields are empty
  if (
    questionIdToUpdate.trim() === "" ||
    updatedQuestion.trim() === "" ||
    updatedAnswer.trim() === "" ||
    updatedDifficulty.trim() === ""
  ) {
    alert("Please fill in all fields.");
    return;
  }

  // Confirm with the user before proceeding with updating the question
  var confirmation = confirm("Are you sure you want to update this question?");
  if (!confirmation) {
    return; // User canceled the operation
  }

  // Send an AJAX request to the server to update the question
  fetch("/update_question", {
    method: "POST",
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
    body: new URLSearchParams({
      questionTableUpdate: selectedTable,
      questionIdToUpdate: questionIdToUpdate,
      updatedQuestion: updatedQuestion,
      updatedAnswer: updatedAnswer,
      updatedDifficulty: updatedDifficulty,
    }),
  })
    .then((response) => response.text())
    .then((message) => {
      alert(message); // Display the server response
    })
    .catch((error) => {
      console.error("Error updating question:", error);
    });
}

// ... (your existing code) ...


// Add this function to handle the delete question button click
function deleteQuestion() {
  var selectedTable = document.getElementById("selectedTable").value;
  var deleteQuestionId = document.getElementById("deleteQuestionId").value;

  // Validate if the Question ID is not empty
  if (deleteQuestionId.trim() === "") {
      alert("Please enter a valid Question ID.");
      return;
  }

  // Confirm with the user before proceeding with the deletion
  var confirmation = confirm("Are you sure you want to delete this question?");
  if (!confirmation) {
      return; // User canceled the operation
  }

  // Send an AJAX request to the server to delete the question
  fetch("/delete_question_id", {
      method: "POST",
      headers: {
          "Content-Type": "application/x-www-form-urlencoded",
      },
      body: new URLSearchParams({
          questionTable: selectedTable,
          questionIdToDelete: deleteQuestionId,
      }),
  })
  .then((response) => response.text())
  .then((message) => {
      alert(message); // Display the server response
      // Fetch tables again to update the dropdown
      fetchTables();
  })
  .catch((error) => {
      console.error("Error deleting question:", error);
  });
}

// Fetch tables when the page loads
document.addEventListener("DOMContentLoaded", fetchTables);
