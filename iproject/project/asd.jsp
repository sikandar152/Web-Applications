 <%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%
	try
	{
	 
		Class.ForName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection c=DriverManager.getConnection("jdbc:odbc:abc");
		Statement st=c.createStatement();
		st.executeUpdate("insert into std12 values('"+T1+"','"+T2+"')"); 
	 }
	catch(SQLException e1)
	{
		System.out.println("SQL Error"+e1);
	}
	 
	
%>