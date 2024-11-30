package cn.techtutorial.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Database URL, username, and password
    private static final String DB_URL = "jdbc:mysql://localhost:3306/ecommerce_cart";
    private static final String DB_USERNAME = "root"; // replace with your DB username
    private static final String DB_PASSWORD = "n@5hw1n050uza"; // replace with your DB password

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        // Retrieve form parameters
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // Load the JDBC driver
        	Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Establish a connection
            conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            
            int id=0;
            pstmt = conn.prepareStatement("select max(id) from signup");
            ResultSet rs=pstmt.executeQuery();
            if(rs.next()) {
            	id=rs.getInt(1);
            	id++;
            }

            // Create SQL insert statement
            String sql = "INSERT INTO signup( name, password, email, address, phoneno, id) VALUES (?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            pstmt.setString(3, email);
            pstmt.setString(4, address);
            pstmt.setString(5, phone);
            pstmt.setInt(6,id);

            // Execute the statement
            int rows = pstmt.executeUpdate();
            if (rows > 0) {
            	response.sendRedirect("login.jsp");
            } else {
                out.println("<html><body>");
                out.println("<h2>Sign Up Failed!</h2>");
                out.println("</body></html>");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            out.println("<html><body>");
            out.println("<h2>Error occurred: " + e.getMessage() + "</h2>");
            out.println("</body></html>");
        } finally {
            // Close resources
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}