package registerUser;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/EditServletUser")

public class EditServletUser extends HttpServlet {
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)   
			throws ServletException, IOException {  
		response.setContentType("text/html");  
		PrintWriter out=response.getWriter();  
		out.println("<h1>Update User</h1>");
		String sid=request.getParameter("id");  
		int id=Integer.parseInt(sid);  
		User e=UserDao.getUserById(id);  
		out.print("<form action='EditServletUser2' method='post'>");  
		out.print("<table>");  
		out.print("<tr><td></td><td><input type='hidden' name='id' value='"+e.getId()+"'/></td></tr>");    
		out.print("<tr><td>Email :</td><td><input type='email' name='email' value='"+e.getEmail()+"'/></td></tr>");  
		out.print("<tr><td>Password :</td><td><input type='password' name='password' value='"+e.getPassword()+"'/>  </td></tr>"); 
		out.print("<tr><td>Type :</td><td><input type='text' name='type' value='"+e.getType()+"' readonly=''/>  </td></tr>");
		out.print("<tr><td>Nom :</td><td><input type='text' name='nom' value='"+e.getNom()+"'/></td></tr>");  
		out.print("<tr><td>Pr�nom :</td><td><input type='text' name='prenom' value='"+e.getPrenom()+"'/>  </td></tr>"); 
		out.print("<tr><td>t�l�phone :</td><td><input type='tel' name='tel' value='"+e.getTel()+"'/>  </td></tr>");
		out.print("<tr><td>Adresse :</td><td><input type='text' name='adress' value='"+e.getAdress()+"'/>  </td></tr>"); 
		out.print("<tr><td>Specialite :</td><td><input type='text' name='specialite' value='"+e.getSpecialite()+"'/>  </td></tr>"); 
		out.print("</td></tr>");  
		out.print("<tr><td colspan='2'><input type='submit' value='Edit & Save '/></td></tr>");  
		out.print("</table>");  
		out.print("</form>");  
		out.close();  
	}
    
}
