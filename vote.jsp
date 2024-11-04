<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vote</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f3f4f6;
            color: #333;
            text-align: center;
            padding: 50px;
        }
        .vote-message {
            font-size: 24px;
            margin: 20px;
        }
        .exit-button {
            font-size: 18px;
            padding: 10px 20px;
            background-color:red;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .exit-button:hover {
            background-color:green;
        }
    </style>
</head>
<body>
<%
    String from = request.getParameter("from");
    if (from != null && from.equals("home")) {
        // Allow access to voting page and display voting options or confirmation
%>
        <div class="vote-message">
            <h2>Thank you for voting!</h2>
            <p>Your vote has been recorded successfully.</p>
        </div>
        <button class="exit-button" onclick="location.href=login.jsp">EXIT</button>
<%
    } else {
        // Redirect to home if accessed directly without parameter
        response.sendRedirect("home.jsp");
    }
%>
</body>
</html>
