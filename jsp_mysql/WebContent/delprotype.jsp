<script src="js/alert.js"></script>
<%@ page import ="java.sql.*" %>

<%
Connection con=null;

ResultSet rs=null;
con=robo.DBManager.getConnection();
String s=request.getParameter("t2");
PreparedStatement ps1 = con.prepareStatement("delete from project where project_type=(?)");
ps1.setString(1,s);
ps1.executeUpdate();

PreparedStatement ps = con.prepareStatement("delete from project_type where Type=(?)");

ps.setString(1,s);
int i=ps.executeUpdate();

if (i>=0) {
    response.sendRedirect("dashboard.jsp");
}
%>