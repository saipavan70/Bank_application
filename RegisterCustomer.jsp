<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(to bottom, #0074e4, #f2f2f2);
        }

        .container {
            background-color: transparent;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
        }

        h1 {
            text-align: center;
            color: #333;
            margin: 0 0 10px 0;
        }

        form {
            display: flex;
            flex-direction: column;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            margin-bottom: 3px;
            color: #555;
        }

        input, select {
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 100%;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            padding: 10px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1> Customer Registration</h1>
        <form action="<%= request.getContextPath() %>/CustomerRegistrationServlet" method="post">
            <label for="fullname">Full Name:</label>
            <input type="text" id="fullname" name="fullname" required>
            
            <label for="address">Address:</label>
            <input type="text" id="address" name="address" required>
            
            <label for="mobile">Mobile No:</label>
            <input type="text" id="mobile" name="mobile" required>
            
            <label for="email">Email ID:</label>
            <input type="email" id="email" name="email" required>
            
            <label for="accounttype">Type of Account:</label>
            <select id="accounttype" name="accounttype" required>
                <option value="Saving">Saving Account</option>
                <option value="Current">Current Account</option>
            </select>
            
            <label for="initialbalance">Initial Balance:</label>
            <input type="number" id="initialbalance" name="initialbalance" min="1000" required>
            
            <label for="dob">Date of Birth:</label>
            <input type="date" id="dob" name="dob" required>
            
            <label for="idproof">Adhaar:</label>
            <input type="text" id="Adhaar" name="Adhaar" required>
            
            <input type="submit" value="Register">
        </form>
    </div>
</body>
</html>
