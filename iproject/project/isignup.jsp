<html>
<head>
<title>Isignup</title>
<script language="JavaScript">
function Abort(){
history.back();
}
</script>
</head>
<BODY bottomMargin=0 aLink=#f0f0f0 leftMargin=90 rightMargin=90 link=#f0f0f0
topMargin=5 bgColor=#98afc7 vLink=#f0f0f0 >
<TABLE border=10 cellSpacing=0 cellPadding=0 width="100%" bgColor=#4e9258>
<TR>
<TD vAlign=top align=middle>
<TABLE bgcolor=#f0f0f0 border=0 cellSpacing=0
cellPadding=0 width=140 align=center>
<TR>
<TD height=100 width="25%"><IMG border=0 alt=""
src="sk2.jpg" width=250
height=100>&nbsp;</TD>
<TD height=100 width="50%"><IMG border=0 alt=""
src="sk9.jpg" width=580
height=100>
</TD>
<TD height=100 width="25%"><IMG border=0 alt=""
src="sk3.jpg" width=250
height=100>&nbsp;</TD>
</tr>
<%@page import="java.sql.*"%>
<TABLE border=0 cellSpacing=10 cellPadding=0 width="100%"
bgColor=#54c571>
<tr><td width=30% align=left>
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection c=DriverManager.getConnection("jdbc:odbc:mydsn");
Statement s=c.createStatement();
String loginname=request.getParameter("LoginName");
String email=request.getParameter("Email");
String password=request.getParameter("Password");
String iname=request.getParameter("InstituteName");
ResultSet rs=s.executeQuery("select * from org_details where Loginname='"+loginname+"'");
if(rs.next())
{ out.println("<img src=fail.gif width=200 height=150></td><td align=left>");
out.println("<h3>Loginname has already been taken.Try with a different Login
name.</h3></td></tr>");
out.println("<tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr>");
out.println("<tr><td align=left><input type=button value=BACK onclick='Abort()'></td></tr>");
}
else{
s.executeUpdate("insert into org_details (LoginName,Email,Password,InstituteName)
values('"+loginname+"','"+email+"','"+password+"','"+iname+"')");
String s1=loginname+"edetails";
String s2=loginname+"qtable";
String s3=loginname+"slist";
s.executeUpdate("create table "+s1+"(ID number,Ename text,Tlimit text,Passmarks number,NoQues
number,Pmarks number,Nmarks number)");
s.executeUpdate("create table "+s2+"(QID Counter,Question text,A text,B text,C text,D text,Answer
text)");
s.executeUpdate("create table "+s3+"(SID number,Sname text,Egiven number,marks number,result
text)");
rs=s.executeQuery("select * from org_details where Loginname='"+loginname+"'");
rs.next();
String id=rs.getString(1);
out.println("<img src=welcome.jpg width=200 height=150></td><td align=left>");
out.println("<h2>Welcome "+loginname+"..You have successfully signed up.InstituteID is "+id+".</h2>");
out.println("<tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr><tr><td>&nbsp;</td></tr>");
out.println("<tr><td></td><td align=left><a
href='afterisignup.jsp?name="+loginname+"&lid="+id+"'><img src=ContinueButton.jpg width=130
height=40></a>");
out.println("&nbsp;&nbsp;<a href=index.jsp><img src=logout.gif width=130 height=40></a>");
}
%>
</td></tr>
<tr><td>&nbsp;</td></tr>
</table>
</table>
</body>
</html>