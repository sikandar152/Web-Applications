<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>

<%
	Statement st=null;
	Connection con=null;	
	try
	{
		
		out.println("1");
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		out.println("2");
		con=DriverManager.getConnection("jdbc:odbc:std2","system","12345");
		out.println("3");
		String s1=request.getParameter("t1");
		String s2=request.getParameter("t2");
		st=con.createStatement();
		out.println("4");
		st.executeUpdate("insert into std values('"+s1+"','"+s2+"')");
		out.println("5");
		//System.out.println("Regno\tname\tcourse\tmarkes");
		//Sestem.out.println("*********")
		out.println("Data Saved");
		st.close();
		con.close();
		//System.out.println(r.getString(1)="\t"+r.getString(2)+"\t"+r.getString(3)+"\t"+r.getString(4));
	}	
		catch (SQLException e2)
			{
				//out.println("Hi hihi Sikendra..");
				out.println(e2);
			}
	%>
