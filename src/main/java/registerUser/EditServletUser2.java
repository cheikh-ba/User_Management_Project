package registerUser;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/EditServletUser2")

public class EditServletUser2 extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)   
	throws ServletException, IOException {  
	response.setContentType("text/html");  
	PrintWriter out=response.getWriter();  
	String sid=request.getParameter("id");  
	int id=Integer.parseInt(sid);  
	String email=request.getParameter("email");  
	String password=request.getParameter("password");
	String type=request.getParameter("type");
	String nom=request.getParameter("nom");  
	String prenom=request.getParameter("prenom");
	String tel=request.getParameter("tel");
	String adress=request.getParameter("adress");
	String specialite=request.getParameter("specialite");
	User e=new User();  
	e.setId(id);   
	e.setEmail(email);  
	e.setPassword(password);
	e.setType(type);  
	e.setNom(nom);  
	e.setPrenom(prenom); 
	e.setTel(tel); 
	e.setAdress(adress);
	e.setSpecialite(specialite);
	int status=UserDao.update(e);  
	if(status>0){  
	response.sendRedirect("admin/tables/AfficheCU.jsp");  
	}else{  
	out.println("Sorry! unable to update record");  
	}  
	out.close();  
}   
}
