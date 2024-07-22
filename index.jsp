<!DOCTYPE html>
<html>
<head>
  <title>Bank Application</title>
  <style>
    body {
      background-image: url("https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/UD7CEz6/bank-bank-building-branch_vyks9ofi_thumbnail-1080_04.png");
      background-repeat: no-repeat;
      background-size: cover;
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
    }

    .button {
      padding: 10px 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
      background-color: #eee;
      color: #000;
      text-decoration: none;
      cursor: pointer;
      font-weight: bold;
      display: inline-block;
      margin: 10px;
    }

    .button:hover {
      background-color: #99CCFF;
      transition: background-color 0.2s ease-in-out;
    }

    .button-container {
      position: absolute;
      top: 70%;
      left: 50%;
      transform: translate(-50%, -50%);
      z-index: 1;
    }
  </style>
</head>
<body>
  <div class="button-container">
    <a href="adminlogin.jsp" class="button" target="_self">Admin</a>
    <a href="customerlogin.jsp" class="button" target="_self">Customer</a>
  </div>
</body>
</html>
