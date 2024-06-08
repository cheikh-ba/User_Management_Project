package userLogin;

import java.io.IOException;
import java.io.PrintWriter;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


/**
 * Servlet implementation class RegisterServletUser
 */
@WebServlet("/RegisterServletUser")
public class RegisterServletUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public RegisterServletUser() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)   
			throws ServletException, IOException {  
		response.setContentType("text/html");  
		try(PrintWriter out=response.getWriter()){    
		out.print("<!DOCTYPE html>");  
		out.print("<html>");
		out.print("<head>");
		out.print("<title>Servlet RegisterServletUser</title>");
		out.print("</head>");
		out.print("<body>");
		
		String prenom = request.getParameter("prenom");
		String nom = request.getParameter("nom");
		String tel = request.getParameter("tel");
		String adress = request.getParameter("adress");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		User userModel = new User(prenom, nom, tel, adress, email, password);
		
		UserDao regUser = new UserDao();
		if (regUser.save(userModel)) {
		   response.sendRedirect("index.html");
		} else {
		    String errorMessage = "User Available";
		    HttpSession regSession = request.getSession();
		    regSession.setAttribute("RegError", errorMessage);
		    response.sendRedirect("register.jsp");
		    }
		
		out.print("</body>");
		out.print("</html>");
		 
		}
	}

}
