package userLogin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class UserDao {
	public static Connection getConnection(){  
    	Connection con=null;  
    	try{  
    		Class.forName("com.mysql.jdbc.Driver");  
    		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gestionClinique_db?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");  
    	}catch(Exception e){System.out.println(e);}  
    		return con;  
    }  
    public boolean save(User e){  
    	//for register user
    	boolean set = false;
    	try{  
    		//Insert register data to database
    		Connection con=UserDao.getConnection();  
    		PreparedStatement ps=con.prepareStatement("insert into user(prenom,nom,tel,adress,email,password) values (?,?,?,?,?,?)");  
				ps.setString(1,e.getPrenom());  
				ps.setString(2,e.getNom());  
				ps.setString(3,e.getTel());  
				ps.setString(4,e.getAdress());  
				ps.setString(5,e.getEmail());  
				ps.setString(6,e.getPassword());   

				ps.executeUpdate();   
				set = true;
    	}catch(Exception ex){ex.printStackTrace();}  
    		return set;  
    }
}
