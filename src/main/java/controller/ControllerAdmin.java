package controller;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
//import java.sql.*;

/**
 * Servlet implementation class ControllerAdmin
 */
@WebServlet("/ControllerAdmin")
public class ControllerAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
    public ControllerAdmin() {
        // TODO Auto-generated constructor stub
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html;charset=UTF-8");
    	try(PrintWriter out = response.getWriter()){
    		String login=request.getParameter("login");
    		String password=request.getParameter("password");
    		try 
    		{
    			if(login!=null && login.equals("admin") && password!=null && password.equals("admin")){
    				response.sendRedirect("admin/index.html");
    			}else
    				{
    					out.println("Login Failed ! Try Again ");
    					out.println("<a href='admin/LoginAdmin.html'>Back</a>");
    					
    				}
    		}
    		catch(Exception ex) 
    		{
    			out.println("Exception :"+ex.getMessage());
    		}
    	}
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

}
