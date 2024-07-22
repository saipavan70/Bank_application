<!DOCTYPE html>
<html>
<head>
    <title>Registration Successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(to bottom, #0074e4, #f2f2f2);
            margin: 0;
        }

        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1 {
            color: #4CAF50;
        }

        p {
            color: #333;
        }

        .button {
            padding: 10px 20px;
            margin-top: 20px;
            border: none;
            border-radius: 5px;
            background-color: #0074e4;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        .button:hover {
            background-color: #005bb5;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Registration Successful</h1>
        <p>Your account has been successfully created.</p>
        <p><strong>Account Number:</strong> <%= request.getAttribute("accountNumber") %></p>
        <p><strong>Temporary Password:</strong> <%= request.getAttribute("tempPassword") %></p>
        <button class="button" onclick="location.href='<%= request.getContextPath() %>/admindashboard.jsp'">Admin Dashboard</button>
    </div>
</body>
</html>
