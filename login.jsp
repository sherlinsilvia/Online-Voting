<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f3f4f6;
            color: #333;
            text-align: center;
            padding: 50px;
        }
    </style>
</head>
<body>
    <form action="VoteServlet" method="post">
        <h2>SIGN IN</h2>
        <label for="fname">NAME:</label>
        <input type="text" id="fname" name="fname" value="John" required><br><br>
        <label for="birthday">DOB:</label>
        <input type="date" id="birthday" name="birthday" required><br><br>
        <label for="pin">ADHAR NO:</label>
        <input type="text" id="pin" name="pin" size="12" required><br><br>
        <button type="submit">SIGN IN</button>
    </form>
</body>
</html>
