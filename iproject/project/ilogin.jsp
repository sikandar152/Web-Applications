<html>
<head>
<title>Institute login</title>
<script language="JavaScript">
function verify(){
var flag=0;
for(i=0;i<=1;i++){
if(document.forms[0].elements[i].value==""){
alert("Please fill in the "+ document.forms[0].elements[i].name +" field");
document.forms[0].elements[i].focus();
flag=1;
break;
}
}
if(flag==1){
return(false);
}
return(true);
}
function Abort(){
history.back();
}
</script></head>
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
<TABLE border=10 cellSpacing=10 cellPadding=0 width="100%"
bgColor=#54c571>
<TR>
<TD bgColor=#e56e94 vAlign=top align=middle><FONT color=#000000
size=3 face=Arial><B><A
href="index.jsp">HOME</A></B></FONT></TD>
<TD bgColor=#e56e94 vAlign=top align=middle><FONT size=3
face=Arial><A
href="const.html"><B>Exam list</B></A></FONT></TD>
<TD bgColor=#e56e94 vAlign=top align=middle><FONT size=3
face=Arial><B><A href="institute.html">Institute
</A></B></FONT></TD>
<TD bgColor=#e56e94 vAlign=top align=middle><FONT size=3
face=Arial><B><A
href="student.html">Student</A></B></FONT></TD>
<TD bgColor=#e56e94 vAlign=top align=middle><FONT size=3
face=Arial><B><A
href=""></A></B></FONT></TD>
<TD bgColor=#e56e94 vAlign=top align=middle><FONT size=3
face=Arial><B><A href="about_us.html">About Us
</A></B></FONT></TD>
<TD bgColor=#e56e94 vAlign=top align=middle><FONT size=3
face=Arial><B><A
href="FAQ.html">Help/FAQ</A></B></FONT></TD>
<TD bgColor=#e56e94 vAlign=top align=middle><FONT size=3
face=Arial><A
href="contact.html"><B>Contact us</B></A></FONT></TD>
</TR></TABLE>
<TABLE border=10 cellSpacing=0 cellPadding=0 width="100%">
<TR>
<TD bgColor=#617c58><B><FONT color=#ff7000 size=3 face=Tahoma
center>
<MARQUEE onmouseover=this.stop()
onmouseout=this.start()>This Apps Is Always Ready for welcoming You <FONT color=#cf000 size=2
face=Tahoma> </FONT></MARQUEE></FONT></B></TD></TR></TABLE>
<FORM action="afterilogin.jsp" method="post" onSubmit="return verify()">
<TABLE border=0 cellSpacing=0 cellPadding=10 width="100%" bgcolor=#ffffff align=center>
<tbody>
<tr>
<td width=40%><img src="login.jpg" width=200 height=150></td>
<td><font size=5><b>Institute Login Form</b></font></td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<td align=right><b><font color=#df2332 size=3>Login Name:</font></b></td>
<%!String s1="",s2="";%>
<%
Cookie c[]=request.getCookies();
if(c!=null){
for(int i=0;i<c.length;i++){
if((c[i].getName()).equals("name")){
s1=c[i].getValue();
}
if((c[i].getName()).equals("pass")){
s2=c[i].getValue();
}
}
}
out.println("<td><input name=LoginName type=text value='"+s1+"'></td> </tr> <tr><td align=right><b><font color=#df2332 size=3>Password:</font></b></td><td><input name=Password type=password value='"+s2+"'></td> </tr>");
%>
<tr>
<td align=right><input type=checkbox name=remember></td>
<td><font size=2>Remember username and password on this
computer</font></td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td align=right><Input type=submit value=Submit></td>
<td><Input type=reset value=Reset></td>
</tr>
<tr>
</tbody>
</table>
</form>
</body>
</html>