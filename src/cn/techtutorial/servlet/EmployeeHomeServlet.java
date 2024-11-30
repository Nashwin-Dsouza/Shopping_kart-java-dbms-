package cn.techtutorial.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/EmployeeHomeServlet")
public class EmployeeHomeServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		PrintWriter out = response.getWriter();

		try {
			// Database connection
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce_cart", "root",
					"n@5hw1n050uza");

			// Validate login
			PreparedStatement ps = con.prepareStatement("SELECT * FROM employee WHERE username=? AND password=?");
			ps.setString(1, username);
			ps.setString(2, password);
			int rows = ps.executeUpdate();
            if (rows > 0) {
            	response.sendRedirect("login.jsp");
            }else {
				out.println("Invalid login credentials");
			}

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}