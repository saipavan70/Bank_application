<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Page</title>
  <style>
    body {
      margin: 0;
      font-family: sans-serif;
    }

    .background-img {
      background-image: url("https://img.freepik.com/premium-vector/financial-banking-technology-concept_387612-31.jpg"); /* Replace with your image path */
      background-size: cover;
      height: 100vh;
      width: 100vw;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .container {
      background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
      color: white;
      padding: 60px;
      border-radius: 10px;
      margin-right: 500px;
    }

    h1 {
      text-align: center;
      margin-bottom: 20px;
    }

    form {
      display: flex;
      flex-direction: column;
      gap: 10px; /* Space between elements */
    }

    label {
      font-weight: bold;
    }

    input[type="text"],
    input[type="password"] {
      padding: 7px;
      border: 5px solid #ccc;
      border-radius: 3px;
    }

    button {
      background-color: #4CAF50; /* Green */
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 3px;
      cursor: pointer;
    }

    button:hover {
      opacity: 0.8;
    }
  </style>
</head>
<body>
  <div class="background-img">
    <div class="container">
      <h1>Login</h1>
      <form action="<%= request.getContextPath() %>/AdminLoginServlet" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" placeholder="Enter your username" required>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" placeholder="Enter your password" required>
        <button type="submit">Login</button>
      </form>
    </div>
  </div>
</body>
</html>
