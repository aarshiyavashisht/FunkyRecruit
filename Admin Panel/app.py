from flask import Flask, render_template, request, jsonify
import mysql.connector

app = Flask(__name__)

# Replace these with your actual MySQL server details
host = "localhost"
user = "root"
password = ""
database = "mydatabase"

# ... (your existing code)

@app.route('/static/app.js')
def serve_js():
    return app.send_static_file('app.js')

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/get_tables')
def get_tables():
    with mysql.connector.connect(
            host=host,
            user=user,
            password=password,
            database=database
    ) as connection:
        with connection.cursor() as cursor:
            cursor.execute("SHOW TABLES")
            tables = [table[0] for table in cursor.fetchall()]
            return jsonify({"tables": tables})

# Add functionality for addTopic
@app.route('/add_topic', methods=['POST'])
def add_topic():
    topic_name = request.form.get('topicName')

    with mysql.connector.connect(
            host=host,
            user=user,
            password=password,
            database=database
    ) as connection:
        with connection.cursor() as cursor:
            # Create a table for the new topic
            create_table_query = f"CREATE TABLE IF NOT EXISTS {topic_name} (id INT AUTO_INCREMENT PRIMARY KEY, question TEXT NOT NULL, answer TEXT NOT NULL, difficulty ENUM('Easy', 'Medium', 'Hard') NOT NULL)"
            cursor.execute(create_table_query)

    return "Topic added successfully"

# Function to get a list of table names from the database
def get_table_names():
    with mysql.connector.connect(
            host=host,
            user=user,
            password=password,
            database=database
    ) as connection:
        with connection.cursor() as cursor:
            cursor.execute("SHOW TABLES")
            tables = [table[0] for table in cursor.fetchall()]
            return tables

# Add functionality for addQuestion
@app.route('/add_question', methods=['POST'])
def add_question():
    table_name = request.form.get('questionTable')
    question = request.form.get('question')
    answer = request.form.get('answer')
    difficulty = request.form.get('difficulty')

    # Ensure that the difficulty is one of the allowed values
    allowed_difficulties = ['Easy', 'Medium', 'Hard']
    if difficulty not in allowed_difficulties:
        return "Invalid difficulty level"

    try:
        with mysql.connector.connect(
                host=host,
                user=user,
                password=password,
                database=database
        ) as connection:
            with connection.cursor() as cursor:
                # Get the current maximum ID in the table
                cursor.execute(f"SELECT MAX(id) FROM {table_name}")
                result = cursor.fetchone()
                max_id = result[0] if result[0] is not None else 0

                # Print the SQL query and values for debugging
                insert_query = f"INSERT INTO {table_name} (id, question, answer, difficulty) VALUES (%s, %s, %s, %s)"
                print(insert_query, (max_id + 1, question, answer, difficulty))

                # Insert the new question into the selected table with an incremented ID
                cursor.execute(insert_query, (max_id + 1, question, answer, difficulty))
                connection.commit()

        return f"Question added successfully to {table_name}"

    except mysql.connector.Error as err:
        print("MySQL Error:", err)
        return f"Error adding question: {err}. Check the server logs for details."
    except Exception as e:
        print("Error adding question:", e)
        return "Error adding question. Check the server logs for details."

# Add functionality for updateTopicName
@app.route('/update_topic_name', methods=['POST'])
def update_topic_name():
    old_topic_name = request.form.get('oldTopicName')
    new_topic_name = request.form.get('newTopicName')

    with mysql.connector.connect(
            host=host,
            user=user,
            password=password,
            database=database
    ) as connection:
        with connection.cursor() as cursor:
            # Rename the table
            rename_query = f"ALTER TABLE {old_topic_name} RENAME {new_topic_name}"
            cursor.execute(rename_query)

    return "Topic name updated successfully"


# Add functionality for deleteTopic
@app.route('/delete_topic', methods=['POST'])
def delete_topic():
    topic_to_delete = request.form.get('topicToDelete')

    with mysql.connector.connect(
            host=host,
            user=user,
            password=password,
            database=database
    ) as connection:
        with connection.cursor() as cursor:
            # Drop the table
            drop_query = f"DROP TABLE IF EXISTS {topic_to_delete}"
            cursor.execute(drop_query)

    return "Topic deleted successfully"

# Add functionality for deleteQuestionId
# Add this route to handle deleting a question by ID
@app.route('/delete_question_id', methods=['POST'])
def delete_question_id():
    table_name = request.form.get('questionTable')
    question_id_to_delete = request.form.get('questionIdToDelete')

    with mysql.connector.connect(
            host=host,
            user=user,
            password=password,
            database=database
    ) as connection:
        with connection.cursor() as cursor:
            # Implement the logic to delete a question by ID
            delete_query = f"DELETE FROM {table_name} WHERE id = {question_id_to_delete}"
            cursor.execute(delete_query)
            connection.commit()

            return f"Question with ID {question_id_to_delete} deleted successfully from {table_name}"

@app.route('/get_table_content', methods=['POST'])
def get_table_content():
    table_name = request.form.get('tableName')

    with mysql.connector.connect(
            host=host,
            user=user,
            password=password,
            database=database
    ) as connection:
        with connection.cursor() as cursor:
            # Fetch all rows from the selected table
            cursor.execute(f"SELECT * FROM {table_name}")
            columns = [desc[0] for desc in cursor.description]
            rows = [dict(zip(columns, row)) for row in cursor.fetchall()]

            return jsonify({"columns": columns, "rows": rows})


@app.route('/get_specific_question', methods=['POST'])
def get_specific_question():
    table_name = request.form.get('tableName')
    difficulty = request.form.get('difficulty')
    question_id = request.form.get('questionId')

    with mysql.connector.connect(
            host=host,
            user=user,
            password=password,
            database=database
    ) as connection:
        with connection.cursor() as cursor:
            # Fetch the specific question based on conditions
            if not question_id:
                # If question_id is empty, fetch all questions for the given difficulty
                cursor.execute(f"SELECT * FROM {table_name} WHERE difficulty = %s", (difficulty,))
            else:
                # Fetch questions based on both difficulty and ID
                cursor.execute(f"SELECT * FROM {table_name} WHERE difficulty = %s AND id = %s", (difficulty, question_id))

            columns = [desc[0] for desc in cursor.description]
            rows = [dict(zip(columns, row)) for row in cursor.fetchall()]

            return jsonify(rows)
        


@app.route('/update_question', methods=['POST'])
def update_question():
    table_name = request.form.get('questionTableUpdate')
    question_id = request.form.get('questionIdToUpdate')
    updated_question = request.form.get('updatedQuestion')
    updated_answer = request.form.get('updatedAnswer')
    updated_difficulty = request.form.get('updatedDifficulty')

    # Ensure that the difficulty is one of the allowed values
    allowed_difficulties = ['Easy', 'Medium', 'Hard']
    if updated_difficulty not in allowed_difficulties:
        return "Invalid updated difficulty level"

    try:
        with mysql.connector.connect(
                host=host,
                user=user,
                password=password,
                database=database
        ) as connection:
            with connection.cursor() as cursor:
                # Print debug information
                print(f"Updating question ID {question_id} in table {table_name}")

                # Implement the logic to update a question
                update_query = f"UPDATE {table_name} SET question = %s, answer = %s, difficulty = %s WHERE id = {question_id}"
                cursor.execute(update_query, (updated_question, updated_answer, updated_difficulty))
                connection.commit()

        return f"Question with ID {question_id} updated successfully in {table_name}"

    except mysql.connector.Error as err:
        print("MySQL Error:", err)
        return f"Error updating question: {err}. Check the server logs for details."
    except Exception as e:
        print("Error updating question:", e)
        return "Error updating question. Check the server logs for details."



if __name__ == '__main__':
    app.run(debug=True)
