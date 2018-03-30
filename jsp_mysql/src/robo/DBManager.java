package robo;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBManager {
	 static Connection cn;
	   public static Connection getConnection()
	   {
		   try
		   {
			   Class.forName("com.mysql.jdbc.Driver");  
			     cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/robo","root", "govi");
			    
		   }
		   catch(Exception e)
		   {
			   e.printStackTrace();
		   }
		   return cn;
	   }
}
