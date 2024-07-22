<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Customer Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom, #0074e4, #f2f2f2);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 800px;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Customer Details</h1>
        <table>
            <tr>
                <th>Full Name</th>
                <th>Address</th>
                <th>Mobile</th>
                <th>Email</th>
                <th>Account Type</th>
                <th>Initial Balance</th>
                <th>Date of Birth</th>
                <th>Adhaar</th>
                <th>Account Number</th>
            </tr>
            <%
                String jdbcUrl = "jdbc:mysql://localhost:3307/bank";
                String dbUser = "root";
                String dbPassword = "2003";

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
                    String query = "SELECT fullname, address, mobile, email, accountType, initialBalance, dob, adhaar, accountNumber FROM customers";
                    Statement statement = connection.createStatement();
                    ResultSet resultSet = statement.executeQuery(query);

                    while (resultSet.next()) {
                        String fullname = resultSet.getString("fullname");
                        String address = resultSet.getString("address");
                        String mobile = resultSet.getString("mobile");
                        String email = resultSet.getString("email");
                        String accountType = resultSet.getString("accountType");
                        double initialBalance = resultSet.getDouble("initialBalance");
                        String dob = resultSet.getString("dob");
                        String adhaar = resultSet.getString("adhaar");
                        String accountNumber = resultSet.getString("accountNumber");
            %>
                        <tr>
                            <td><%= fullname %></td>
                            <td><%= address %></td>
                            <td><%= mobile %></td>
                            <td><%= email %></td>
                            <td><%= accountType %></td>
                            <td><%= initialBalance %></td>
                            <td><%= dob %></td>
                            <td><%= adhaar %></td>
                            <td><%= accountNumber %></td>
                        </tr>
            <%
                    }
                    connection.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </table>
    </div>
</body>
</html>
