<html>
<head>
<title>welcome</title>
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
src="logo.gif" width=250
height=100>&nbsp;</TD>
<TD height=100 width="50%"><IMG border=0 alt=""
src="logo2.jpg" width=580
height=100>
</TD>
<TD height=100 width="25%"><IMG border=0 alt=""
src="logo.gif" width=250
height=100>&nbsp;</TD>
</tr>
<TABLE border=10 cellSpacing=10 cellPadding=0 width="100%"
bgColor=#54c571>
<TR>
<TD bgColor=#e56e94 vAlign=top align=middle><FONT color=#000000
size=3 face=Arial><B><A
href="afterisignup2.jsp">HOME</A></B></FONT></TD>
<TD bgColor=#e56e94 vAlign=top align=middle><FONT size=3
face=Arial><B><A href="const.htm">Exam Details
</A></B></FONT></TD>
<TD bgColor=#e56e94 vAlign=top align=middle><FONT size=3
face=Arial><B><A
href="const.html">Student List</A></B></FONT></TD>
<TD bgColor=#e56e94 vAlign=top align=middle><FONT size=3
face=Arial><B><A
href="const.html"></A></B></FONT></TD>
<TD bgColor=#e56e94 vAlign=top align=middle><FONT size=3
face=Arial><A
href="const.html"><B>Questions</B></A></FONT></TD>
<TD bgColor=#e56e94 vAlign=top align=middle><FONT size=3
face=Arial><A
href="const.html"><B>Results</B></A></FONT></TD>
<TD bgColor=#e56e94 vAlign=top align=middle><FONT size=3
face=Arial><B><A href="const.html">Edit Exam Details
</A></B></FONT></TD>
<TD bgColor=#e56e94 vAlign=top align=middle><FONT size=3
face=Arial><B><A
href="logout.jsp">Logout</A></B></FONT></TD></TR></TABLE>
<TABLE border=10 cellSpacing=0 cellPadding=0 width="100%">
<TR>
<TD bgColor=#617c58><B><FONT color=#ffffff size=3 face=Tahoma
center>
<%
String lname=(String)session.getAttribute("loginname");
String inid=(String)session.getAttribute("id");
out.println("<MARQUEE onmouseover=this.stop() onmouseout=this.start()>welcome
"+lname+"<FONT color='white' size=2 face=Tahoma> (institute id="+inid+")</FONT></MARQUEE>");
%>
</FONT></B></TD></TR></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=10 width="100%">
<TR>
<TD bgColor=#c0c0c0 vAlign=top width="18%" align=middle>&nbsp;
<TABLE border=10 cellSpacing=10 cellPadding=10 width="100%"
bgColor=#4e8975>
<tr>
<TD bgColor=#54c571 width="100%"><FONT size=4
face=Arial><B>OPTIONS</B></FONT></TD></TR>
<TR>
<TD bgColor=#a74ac7 width="100%"><FONT size=2 face=Arial><B><A
href="afteredetails0.jsp">Enter Exam Details</A></B></FONT></TD></TR>
<TR>
<TD bgColor=#a74ac7 width="100%"><FONT size=2 face=Arial><B><A
href="qdetails.jsp">Enter Questions
</A> </B></FONT></TD></TR>
<TR>
<TD bgColor=#a74ac7 width="100%"><FONT size=2 face=Arial><B><A
href="sdetails.jsp">Enter Student List</A>
</FONT></B></TD></TR>
<TR>
<TD bgColor=#a74ac7 width="100%"><B><FONT size=2 face=Arial><A
href="const.html">Delete Questions</A></FONT></B></TD></TR>
<TR>
<TD bgColor=#a74ac7 width="100%"><B><FONT size=2
face=Arial><B><A
href="const.html">Delete Students
</A></B></FONT></B></TD></B></TR></TABLE>
<P>
<TABLE border=10 cellSpacing=0 cellPadding=0 width="100%"
bgColor=#f87431>
<TR>
<TD width="100%" align=middle><B><FONT color=#ffffff size=2
face=Arial>Made By:</FONT></B></TD></TR></TABLE>
<TABLE border=0 cellSpacing=10 cellPadding=10 width="100%"
bgColor=#bce954>
<TR>
<TD bgColor=#e0ffff width="100%"><FONT size=2 face=Arial>Ankit Goel<br>Anoop
Banswar<br>Ayush Aggarwal</FONT></TD></TR></TABLE></FONT></B></P>
</td>
<P> </P>
<P></P></TD>
<TD background="background.jpg" vAlign=top width="61%" align=left>
<P><BR><FONT color=#ff0000 size=4 face="Lucida Calligraphy"><B>
<H1><center>Welcome </center></H1></B></FONT>
<font size=4 face=arial><i>
Now conducting exams is very simple...You just need to follow following steps:
</i></font>
<br><br>
<font face="monotype corsiva" color=blue size=6><b><u>Steps :</u></b></font><br><br>
<img src="bullet.jpg" width=35 height=20>
<font size=4 face="lucida console"><a href="afteredetails0.jsp">1.Enter the exam
details</a></font>
<br><br>
<img src="bullet.jpg" width=35 height=20>
<font size=4 face="lucida console" color="dark pink"> <a href="qdetails.jsp">2.Enter
questions</a>
</font>
<br><br>
<img src="bullet.jpg" width=35 height=20>
<font size=4 face="lucida console" color="dark pink"> <a href="sdetails.jsp">3.Enter students
list</a>
</font>
<br><br>
</table>
</table>
</table>
</body>
</html>