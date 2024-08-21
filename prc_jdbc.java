import java.sql.*;
import java.sql.ResultSet;
class prc_jdbc {
public static void main(String args[])
{
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String NameString, RollString, MarkString, GradeString;
	try {
		String username= "root";
		String password = "";
		String url = "jdbc:mysql://localhost:3306/school";
		Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
		conn = DriverManager.getConnection (url, username, password);
		stmt = conn.createStatement();
		stmt.execute("create table JavaCourse(Roll Integer primary key, Name Varchar(30), Marks Integer not null,Grade Varchar(2))");
	}
	catch (SQLException ex)
	{
		System.out.println("SQLException: "+ex.getMessage());
		System.out.println("SQLState: "+ex.getSQLState());
		System.out.println("VendorError: "+ex.getErrorCode());
	}
	catch (Exception e)
	{
		System.err.println("Cannot connect to database server");
	}
}
}