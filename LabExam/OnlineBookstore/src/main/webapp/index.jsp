<!DOCTYPE html>
<html>
<head>
    <title>Book Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f9f9f9;
            color: #333;
        }
        h2 {
            text-align: center;
            color: #2c3e50;
        }
        form {
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: auto;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }
        input, select, button {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        button {
            background-color: #007BFF;
            color: white;
            font-size: 16px;
            cursor: pointer;
            border: none;
        }
        button:hover {
            background-color: #0056b3;
        }
        a {
            display: block;
            text-align: center;
            color: #007BFF;
            text-decoration: none;
            margin: 20px auto;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h2>Book Management</h2>
    <form action="register" method="post">
        <!-- Task Description -->
        <label for="title">Book title:</label>
        <input type="text" id="title" name="title" placeholder="Enter Book title" required>

        <!-- Task Status -->
        <label for="author">Book author:</label>
        <input type="text" id="author" name="author" placeholder="Enter book author" required>

        <!-- Due Date -->
        <label for="price">Due Date:</label>
        <input type="number" id="price" name="price" required>

        <!-- Submit Button -->
        <button type="submit">Register Book</button>
    </form>
    
    <br>
    <a href="displayBooks">View All Tasks</a>
    
    <form action="deleteBook" method="post">
        <!-- Task ID -->
        <label for="book_id">Book ID:</label>
        <input type="number" id="book_id" name="id" placeholder="Enter bokk ID to delete" required>

        <!-- Submit Button -->
        <button type="submit">Delete Task</button>
    </form>

    <form action="searchBooks" method="get">
        <!-- Search Description -->
        <label for="search_title">Search title:</label>
        <input type="text" id="search_title" name="title" placeholder="Enter title to search" required>

        <!-- Submit Button -->
        <button type="submit">Search book</button>
    </form>
</body>
</html>
