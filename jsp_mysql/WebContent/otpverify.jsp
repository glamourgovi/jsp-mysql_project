<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<center>

<%

Object o=session.getAttribute("otp");
String otp=String.valueOf(o);

String otp1=request.getParameter("tt");
if(session.getAttribute("otp").equals(otp1))
{	
response.sendRedirect("changepassword.jsp");
}
else if(otp1.equals(""))
{
	%>
	
	<jsp:include page="fgtpwd.jsp"/>
	<%out.println("<b><center><h3><font color=red>OTP not entered.</font></b>");

}

else
{%>
	
<jsp:include page="fgtpwd.jsp"/>
<%out.println("<b><center><h3><font color=red>Your OTP was wrong.</font></b>");
 }

%>
</center>
</body>

</html>