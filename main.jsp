<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Voting</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(to bottom right, #6a11cb, #2575fc);
            color: #ffffff;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            text-align: center;
            position: relative;
        }
        .logo {
            position: absolute;
            top: 20px;
            left: 20px;
            width: 80px;
            height: auto;
        }
        .card {
            background: rgba(255, 255, 255, 0.3);
            border-radius: 15px;
            padding: 40px;
            margin: 20px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.5);
            transition: transform 0.3s, box-shadow 0.3s;
            backdrop-filter: blur(10px);
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 40px rgba(0, 0, 0, 0.5);
        }

        h2 {
            font-size: 36px;
            margin-bottom: 20px;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.5);
        }

        .large-button {
            font-size: 24px;
            padding: 15px 30px;
            margin: 10px;
            background-color: #ffffff;
            color: #6a11cb;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }

        .large-button:hover {
            background-color: #f0f0f0;
            transform: scale(1.05);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.4);
        }

        footer {
            text-align: center;
            padding: 10px;
            background: rgba(0, 0, 0, 0.8);
            color: white;
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            font-size: 14px;
            z-index: 1000;
            box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.5);
        }
    </style>
</head>
<body> 

    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjUY1UJ3e1ncB-KYX-9vWhytPKTbHyS2GNlQ&s" alt="logo image" class="logo"> 

    <div class="card">
        <h2>Welcome to Online Voting!</h2>
        <p>Select your leader:</p>
        <div>
            <a href="vote.jsp?from=home" class="large-button">🐯 TIG</a>
            <a href="vote.jsp?from=home" class="large-button">🦈 SHA</a>
            <a href="vote.jsp?from=home" class="large-button">🦇 BAT</a>
            <a href="vote.jsp?from=home" class="large-button">🦕 DINO</a>
            <a href="vote.jsp?from=home" class="large-button">🕸️ SPY</a>
        </div>
    </div>

    <footer>
        <p>@ online_vote</p>
    </footer>
</body>
</html>
