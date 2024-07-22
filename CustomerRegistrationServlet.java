package register;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.UUID;

@WebServlet("/CustomerRegistrationServlet")
public class CustomerRegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form parameters
        String fullname = request.getParameter("fullname");
        String address = request.getParameter("address");
        String mobile = request.getParameter("mobile");
        String email = request.getParameter("email");
        String accountType = request.getParameter("accounttype");
        double initialBalance = Double.parseDouble(request.getParameter("initialbalance"));
        String dob = request.getParameter("dob");
        String adhaar = request.getParameter("Adhaar");

        // Generate account number and temporary password
        String accountNumber = UUID.randomUUID().toString().substring(0, 10); // Trimming to 10 characters
        String tempPassword = UUID.randomUUID().toString().substring(0, 6);;

        // Database connection details
        String jdbcUrl = "jdbc:mysql://localhost:3307/bank";
        String dbUser = "root";
        String dbPassword = "2003";

        // SQL query to insert customer data
        String insertQuery = "INSERT INTO customers (fullname, address, mobile, email, accountType, initialBalance, dob, adhaar, accountNumber, password, temppassword) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
             PreparedStatement preparedStatement = connection.prepareStatement(insertQuery)) {

            // Set parameters for the prepared statement
            preparedStatement.setString(1, fullname);
            preparedStatement.setString(2, address);
            preparedStatement.setString(3, mobile);
            preparedStatement.setString(4, email);
            preparedStatement.setString(5, accountType);
            preparedStatement.setDouble(6, initialBalance);
            preparedStatement.setString(7, dob);
            preparedStatement.setString(8, adhaar);
            preparedStatement.setString(9, accountNumber);
            preparedStatement.setString(10, tempPassword);
            preparedStatement.setString(11, "1"); // Initial value for temppassword

            // Execute the query
            int result = preparedStatement.executeUpdate();

            if (result > 0) {
                // Set the account number and temporary password as request attributes
                request.setAttribute("accountNumber", accountNumber);
                request.setAttribute("tempPassword", tempPassword);
                // Forward to success JSP page
                request.getRequestDispatcher("/registration-success.jsp").forward(request, response);
            } else {
                // Handle insertion failure
                response.getWriter().println("Error: Registration failed");
            }

        } catch (SQLException e) {
            e.printStackTrace(); // Print stack trace to server logs
            response.getWriter().println("Error: Database error occurred. " + e.getMessage()); // Print SQL error message
        }
    }
}
