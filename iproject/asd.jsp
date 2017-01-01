import java.io;
import java.sql.*;
public class data1
{
	public static void main(String asd[])
	{
	try
	{
	ResultSet r;
	Class.ForName("sun.jdbc.odbc.jdbcodbcDriver");
	Connection c=DriverManager.getConnection("jdbc:odbc:stu");
	Statement st=c.createStatement();
	r=st.executeQuery("select * from std12"); 
	System.out.println("Regno\tName\tCourse\tMarks");
	System.out.println("*******************");
	while(r.next())
	{
	System.out.println(r.getString(1)+"\t"+r.getString(2)+r.getString(3)+"\t"+r.getString(4));
	}
	catch(SQLException e1)
	{
	System.out.println("SQL Error"+e1);
	}
	catch(Exception e2)
	{
	System.outprintln("Error"+e2);
	}
	}
}