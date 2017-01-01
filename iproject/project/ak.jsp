<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>
		
	try
	{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection c=DriverManager.getConnection("jdbc:odbc:stu");
		Statement st=c.createStatement();
		st.executeUpdate("insert into std values('+B1+','+B2+')");
		//System.out.println("Regno\tname\tcourse\tmarkes");
		//Sestem.out.println("*********")
		out.println("Data Saved");
		c.close();
		//System.out.println(r.getString(1)="\t"+r.getString(2)+"\t"+r.getString(3)+"\t"+r.getString(4));
	}	
		catch (Exception e2)
			{
				out.println(e2);
			}
	%>
