<html>
<head>
<title>Question Details</title>
<script language="JavaScript">
function verify(){
var flag=0;
for(i=0;i<6;i++){
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
if(flag==0){
var ans = document.forms[0].elements[5].value;
var flg=0;
if(ans=="A"||ans=="B"||ans=="C"||ans=="D")
{
flg=1;
}
if(flg==0)
{
alert("Enter only one of the option names in Answer.");
document.forms[0].elements[5].focus();
return(false);
}
}
return(true);
}
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
<FORM action="afterqdetails.jsp" method="post" onSubmit="return verify()">
<TABLE border=0 cellSpacing=0 cellPadding=10 width="100%" bgcolor=#ffffff align=center>
<tbody>
<TABLE border=0 cellSpacing=0 cellPadding=10 width="100%" bgcolor=#ffffff align=center>
<tbody>
<tr>
<td width=40% align="left"><img src="question.jpg" width=200 height=150></td>
<td align="left"><font size=7 color="black"><b>Question Details</b></font></td>
</tr>
</tbody>
</TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=10 width="100%" bgcolor=#ffffff align=center>
<tbody>
<tr>
<td align="center" colspan="2" ><b><h2><font color="black">Enter the Question
details:</font></h2></b> </td>
</tr>
<tr>
<td align=right width="50%"><b><font color=#df2332 size=3>Question:</font></b></td>
<td align="left"><input name=Question type=text></td>
</tr>
<tr>
<td align=right><b><font color=#df2332 size=3>Option A:</font></b></td>
<td align="left"><input type="text" name="A" /></td>
</tr>
<tr>
<td align=right><b><font color=#df2332 size=3>Option B:</font></b></td>
<td align="left"><input name=B type=text></td>
</tr>
<tr>
<td align=right><b><font color=#df2332 size=3>Option C:</font></b></td>
<td align="left"><input name=C type=text></td>
</tr>
<tr>
<td align=right><b><font color=#df2332 size=3>Option D:</font></b></td>
<td align="left"><input name=D type=text></td>
</tr>
<tr>
<td align=right><b><font color=#df2332 size=3>Answer:</font></b></td>
<td align="left"><input name=Answer type=text>(A,B,C,D)</td>
</tr>
</tbody>
</TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=10 width="100%" bgcolor=#ffffff align=center>
<tbody>
<tr>
<td>&nbsp</td>
<td align="center">
<Input type=submit value="Submit">
<Input type=reset value=Reset name=>
</td>
</tr>
<tr>
<td>&nbsp</td>
</tr>
</tbody>
</TABLE>
<br>
</tbody>
</TABLE>
</FORM>
<br>
</body>
</FONT></B></TD></TR></TABLE>
</html>