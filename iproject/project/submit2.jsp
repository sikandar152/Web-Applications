<html>
<head>
<title>JSP Page</title>
</head>
<BODY bottomMargin=0 leftMargin=90 rightMargin=90
topMargin=5 bgColor=#98afc7 >
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
</TR>
<TABLE border=10 cellSpacing=10 cellPadding=0 width="100%"
bgColor=#54c571>
<TR align="right">
<%
String sname=(String)session.getAttribute("sname");
String sid=(String)session.getAttribute("sid");
String iname=(String)session.getAttribute("iname");
out.println("<TD bgColor=#e56e94 vAlign=top align=middle width='60%'>Hi "+sname+"<FONT
color='white' size=2 face=Tahoma> (student id="+sid+")</FONT></td>");
%>
<TD bgColor=#e56e94 vAlign=top align=middle width="10%"><FONT size=3
face=Arial><B><A
href="logout.jsp">Logout</A></B></FONT></TD></TR></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=10 width="100%" bgcolor="white">
<TR>
<TD vAlign=top align=left>
<P><BR><FONT color=#ff0000 size=4 face="Lucida Calligraphy"><B>
<center> <H1>RESULT</H1></center></B></FONT>
<%@page import="java.sql.*"%>
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection c=DriverManager.getConnection("jdbc:odbc:mydsn");
Statement s=c.createStatement();
String tbl1=iname+"edetails";
String tbl3=iname+"slist";
ResultSet rs1=s.executeQuery("select * from "+tbl1);
rs1.next();
String ename=rs1.getString(2);
String passmark=rs1.getString(4);
double pass=Double.parseDouble(passmark);
String noques=rs1.getString(5);
double nq=Double.parseDouble(noques);
int nques=(int)nq;
String pmarks=rs1.getString(6);
double positive=Double.parseDouble(pmarks);
String nmarks=rs1.getString(7);
double negative=Double.parseDouble(nmarks);
String[] ans=(String[])session.getAttribute("ans");
String[] sol=(String[])session.getAttribute("sol");
int correct=0;
int incorrect=0;
int unattempt=0;
for(int i=0;i<nques;i++)
{
if(ans[i].equals(sol[i])){
correct++;
}
else if(ans[i].equals("null"))
unattempt++;
else
incorrect++;
}
double marks=correct*positive-incorrect*negative;
String result;
if(marks>=pass)
result="Pass";
else
result="Fail";
s.executeUpdate("update "+tbl3+" set marks="+marks+" where SID="+sid+" and Sname='"+sname+"'");
s.executeUpdate("update "+tbl3+" set result='"+result+"' where SID="+sid+" and Sname='"+sname+"'");
%>
<table width="100%">
<tr bgcolor="yellow" width="100%">
<td align="middle"><font color="black" size="4"><b>Number of Correct Questions</b></font>
</td>
<td align="middle"><font color="blue" size="4">
<%out.println(correct);
%>
</font> </td>
</tr>
<tr></tr>
<tr bgcolor="pink" width="100%">
<td align="middle"><font color="black" size="4"><b>Number of Incorrect Questions</b></font>
</td>
<td align="middle"><font color="blue" size="4">
<%out.println(incorrect);
%>
</font> </td>
</tr>
<tr></tr>
<tr bgcolor="yellow" width="100%">
<td align="middle"><font color="black" size="4"><b>Number of Unattempted
Questions</b></font> </td>
<td align="middle"><font color="blue" size="4">
<%out.println(unattempt);
%>
</font> </td>
</tr>
<tr></tr>
<tr bgcolor="pink" width="100%">
<td align="middle"><font color="black" size="4"><b>Marks</b></font> </td>
<td align="middle"><font color="blue" size="4">
<%out.println(marks);
%>
</font> </td>
</tr>
<tr></tr>
<tr bgcolor="yellow" width="100%">
<td align="middle"><font color="black" size="4"><b>Result</b></font> </td>
<td align="middle"><font color="blue" size="4">
<%out.println(result);
%>
</font> </td>
</tr>
<tr></tr>
</table> </TABLE>
</TABLE>
</body>
</html>