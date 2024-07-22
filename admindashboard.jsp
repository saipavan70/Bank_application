<!DOCTYPE html>
<html>
<head>
  <title>Admin Dashboard</title>
  <style>
    body {
      background-image: url("https://img.freepik.com/premium-vector/financial-banking-technology-concept_387612-31.jpg");
      background-size: cover;
      background-repeat: no-repeat;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
      font-family: Arial, sans-serif;
    }

    .container {
      background-color: rgba(0, 0, 0, 0.5);
      padding: 50px;
      border-radius: 15px;
      box-shadow: 0 0 15px rgba(0, 0, 0, 0.5);
      text-align: center;
      margin-right: 400px;
    }
    h1 {
      color: white;
    }

    .button {
      padding: 15px 30px;
      margin: 10px 0;
      border: none;
      border-radius: 5px;
      background-color: #4CAF50;
      color: white;
      font-size: 16px;
      cursor: pointer;
      display: block;
      width: 100%;
      max-width: 300px;
      margin-left: auto;
      margin-right: auto;
    }

    .button:hover {
      background-color: #45a049;
    }

    .button-container {
      margin-top: 20px;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Admin Dashboard</h1>
    <div class="button-container">
      <button class="button" onclick="location.href='RegisterCustomer.jsp'" target="_self">Register a Customer</button>
      <button class="button" onclick="location.href='viewCustomerDetails.jsp'" target="_self">View Customer Details</button>
      <button class="button" onclick="location.href='editCustomerDetails.jsp'" target="_self">Edit Customer Details</button>
      <button class="button" onclick="location.href='closeCustomerAccount.jsp'" target="_self">Close Customer Account</button>
      <button class="button" onclick="location.href='reopenCustomerAccount.jsp'" target="_self">Reopen Customer Account</button>
    </div>
  </div>
</body>
</html>
