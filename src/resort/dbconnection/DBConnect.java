package resort.dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBConnect {
	
	 private static String jdbcURL = "jdbc:mysql://localhost:3306/resort?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	 private static String jdbcUserName = "root";
	 private static String jdbcPassword = "";
	 private static Connection con;

	 public static Connection getConection() {
		 
		 try {
			 
			 Class.forName("com.mysql.jdbc.Driver");
				
			 con = DriverManager.getConnection(jdbcURL, jdbcUserName, jdbcPassword);
			 
			 
		 } catch(Exception e) {
			 System.out.println("Database Connection Failed!");
		 }
		 
		 return con;
		 
	 }
}
