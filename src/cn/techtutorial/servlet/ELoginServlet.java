package cn.techtutorial.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ELoginServlet
 */
@WebServlet("/ELoginServlet")
public class ELoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String DB_URL = "jdbc:mysql://localhost:3306/ecommerce_cart";
	private static final String DB_USERNAME = "root"; // replace with your DB user_name
	private static final String DB_PASSWORD = "n@5hw1n050uza"; // replace with your DB password

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("username");
		String password = request.getParameter("password");

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			// Load the JDBC driver
			Class.forName("com.mysql.cj.jdbc.Driver");

			// Establish a connection
			conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
			PrintWriter out = response.getWriter();
			String sql = "SELECT * FROM employee WHERE email = ? AND password = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			pstmt.setString(2, password);

			// Execute the query
			rs = pstmt.executeQuery();
			if (rs.next()) {
				// Login successful, redirect to home.jsp
				response.sendRedirect("EmployeeHome.jsp");
			} else {
				// Login failed, set error message and forward back to login.jsp
				request.setAttribute("errorMessage", "Incorrect email or password.");
				RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
				dispatcher.forward(request, response);
			}

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			request.setAttribute("errorMessage", "An error occurred: " + e.getMessage());
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		} finally {
			// Close resources

			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
