<%@ page import ="java.sql.*" %>

<%
Connection con=null;
PreparedStatement ps15=null;
ResultSet rs15=null;
con=robo.DBManager.getConnection();
String del=request.getParameter("s1");
ps15=con.prepareStatement("delete from team where email=(?)");
ps15.setString(1,del);
int a=ps15.executeUpdate();
if(a>=0)
{
	response.sendRedirect("dashboard.jsp");}
%>
                                    