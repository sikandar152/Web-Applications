<html>
<body>
<%@page session="true"%>
<%
String s1=request.getParameter("name");
String s2=request.getParameter("lid");
session.setAttribute("loginname",s1);
session.setAttribute("id",s2);
response.sendRedirect("afterisignup2.jsp");
%>
</body>
</html>