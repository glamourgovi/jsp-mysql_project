<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <script src="js/alert.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert an Image into MySQL Database</title>
    </head>
    <body>
         <%
         Connection con=null;
         
         
         con=robo.DBManager.getConnection();
         PreparedStatement pstmt = null;
String pro=request.getParameter("t1"); 
pstmt = con.prepareStatement("insert into project_type values(?,?)");
pstmt.setInt(1,0);
pstmt.setString(2,pro);

int count = pstmt.executeUpdate();
if(count==1)
{
response.sendRedirect("dashboard.jsp");
}
%>