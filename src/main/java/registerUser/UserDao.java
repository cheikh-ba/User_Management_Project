package registerUser;

import java.util.*;  
import java.sql.*; 

public class UserDao { 
    public static Connection getConnection(){  
    	Connection con=null;  
    	try{  
    		Class.forName("com.mysql.jdbc.Driver");  
    		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gestionclinique_db?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");  
    	}catch(Exception e){System.out.println(e);}  
    		return con;  
    }  
    public static int save(User e){  
    	int status=0;  
    	try{  
    		Connection con=UserDao.getConnection();  
    		PreparedStatement ps=con.prepareStatement("insert into user(email,password,type,nom,prenom,tel,adress,specialite) values (?,?,?,?,?,?,?,?)");   
	    		ps.setString(1,e.getEmail());  
				ps.setString(2,e.getPassword());  
				ps.setString(3,e.getType());  
				ps.setString(4,e.getNom());  
				ps.setString(5,e.getPrenom());  
				ps.setString(6,e.getTel());
				ps.setString(7,e.getAdress());
				ps.setString(8,e.getSpecialite());
				status=ps.executeUpdate();  
				con.close();  
    	}catch(Exception ex){ex.printStackTrace();}  
    		return status;  
    }  
public static int update(User e){  
	int status=0;  
	try{  
		Connection con=UserDao.getConnection();  
		PreparedStatement ps=con.prepareStatement("update user set email=?,password=?,type=?,nom=?,prenom=?,tel=?,adress=?,specialite=? where id=?");  
		ps.setString(1,e.getEmail());  
		ps.setString(2,e.getPassword());  
		ps.setString(3,e.getType());  
		ps.setString(4,e.getNom());  
		ps.setString(5,e.getPrenom());  
		ps.setString(6,e.getTel());
		ps.setString(7,e.getAdress());
		ps.setString(8,e.getSpecialite());
		ps.setInt(9,e.getId());  
		status=ps.executeUpdate();  
		con.close();  
	}catch(Exception ex){ex.printStackTrace();}
		return status;  
	}  

public static int delete(int id){  
	int status=0;  
	try{  
		Connection con=UserDao.getConnection();  
		PreparedStatement ps=con.prepareStatement("delete from user where id=?");  
		ps.setInt(1,id);  
		status=ps.executeUpdate();  
		con.close();  
	}catch(Exception e){e.printStackTrace();} 
		return status;  
	} 

public static User getUserById(int id){  
	User e=new User();  
	try{  
	Connection con = UserDao.getConnection();  
	PreparedStatement ps = con.prepareStatement("select * from user where id=?");  
	ps.setInt(1,id);  
	ResultSet rs = ps.executeQuery();
	if(rs.next()){  
		e.setId(rs.getInt(1));  
		e.setEmail(rs.getString(2)); 
		e.setPassword(rs.getString(3));  
		e.setType(rs.getString(4));
		e.setNom(rs.getString(5));
		e.setPrenom(rs.getString(6));  
		e.setTel(rs.getString(7)); 
		e.setAdress(rs.getString(8)); 
		e.setSpecialite(rs.getString(9));
	}  
	con.close();  
	}catch(Exception ex){ex.printStackTrace();}  
		return e;  
	}  

public static List<User> getAllUsers(){  
	List<User> list=new ArrayList<User>();  
	try{  
		Connection con=UserDao.getConnection();  
		PreparedStatement ps=con.prepareStatement("select * from user");  
		ResultSet rs=ps.executeQuery();  
		while(rs.next()){  
			User e=new User();  
			e.setId(rs.getInt(1));  
			e.setEmail(rs.getString(2)); 
			e.setPassword(rs.getString(3));  
			e.setType(rs.getString(4));
			e.setNom(rs.getString(5));
			e.setPrenom(rs.getString(6));  
			e.setTel(rs.getString(7)); 
			e.setAdress(rs.getString(8));  
			e.setSpecialite(rs.getString(9));
		list.add(e);  
		}  
	con.close();  
	}catch(Exception e){e.printStackTrace();}  
		return list;  
	}  
}
