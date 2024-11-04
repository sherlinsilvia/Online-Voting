import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/VoteServlet")
public class VoteServlet extends HttpServlet {
    private onlinevoting onlineVoting = new onlinevoting(); // Corrected capitalization

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Check if user is already logged in
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("user") != null) {
            response.sendRedirect("home.jsp"); // Redirect to home if already logged in
            return;
        }

        String name = request.getParameter("fname");
        String dob = request.getParameter("birthday");
        String adhar = request.getParameter("pin");

        // Create a new member object
        member Member = new member(name, dob, adhar); // Use proper naming

        // Attempt to insert the member into the database
        boolean isInserted;
        try {
            isInserted = onlineVoting.insert(Member);
        } catch (Exception e) {
            e.printStackTrace();
            response.setContentType("text/html");
            response.getWriter().println("<html><body>");
            response.getWriter().println("<p>An error occurred while processing your registration. Please try again later.</p>");
            response.getWriter().println("</body></html>");
            return; // Stop further processing
        }

        if (isInserted) {
            // Optionally create a session for the user
            session = request.getSession();
            session.setAttribute("user", name); // Set the user attribute
            response.sendRedirect("home.jsp"); // Redirect to home.jsp after successful registration
        } else {
            // Stay on the sign-up page and show an error message
            response.setContentType("text/html");
            response.getWriter().println("<html><body>");
            response.getWriter().println("<p>Registration failed. Please check your details and try again.</p>");
            response.getWriter().println("</body></html>");
        }
    }
}
