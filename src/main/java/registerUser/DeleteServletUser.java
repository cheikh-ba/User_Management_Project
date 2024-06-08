package registerUser;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;  

@WebServlet("/DeleteServletUser")

public class DeleteServletUser extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)   
			throws ServletException, IOException {  
				String sid=request.getParameter("id");  
				int id=Integer.parseInt(sid);  
				UserDao.delete(id);  
				response.sendRedirect("admin/tables/AfficheCU.jsp");  
	} 
    
}
