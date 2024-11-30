package cn.techtutorial.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class StudentDetailServlet
 */
@WebServlet("/StudentDetailServlet")
public class StudentDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// Set response content type
        response.setContentType("text/html");

        // Get print writer
        PrintWriter pw = response.getWriter();

        // Get the parameters from the request
        String name = request.getParameter("Name");
        String usn = request.getParameter("USN");
        String totalMarks = request.getParameter("TotalMarks");

        // Display the student details
        pw.println("<html><body>");
        pw.println("<h2>Student Details</h2>");
        pw.println("<p>Name: " + name + "</p>");
        pw.println("<p>USN: " + usn + "</p>");
        pw.println("<p>Total Marks: " + totalMarks + "</p>");
        pw.println("</body></html>");

        // Close the writer
        pw.close();

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
