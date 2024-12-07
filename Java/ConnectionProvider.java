package project;
import java.sql.*;
public class ConnectionProvider {

	
	public static Connection getCon()
	{ Connection con ;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/iiht", "root" ,"Neha25");
			
return con;
			
			
		}
		catch(Exception e)
		{
			System.out.print(e);
			return null;
		}
		
	}
}
