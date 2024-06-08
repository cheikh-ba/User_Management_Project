package userLogin;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionPro {

	public static Connection getConnection(){  
    	Connection con=null;  
    	try{  
    		Class.forName("com.mysql.jdbc.Driver");  
    		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gestionClinique_db?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");  
    	}catch(Exception e){System.out.println(e);}  
    		return con;  
    }  
}
