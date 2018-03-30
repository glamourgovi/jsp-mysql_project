<%@ page import ="java.sql.*" %>
<html>


<form method=post>
<%
Connection con=robo.DBManager.getConnection();
PreparedStatement ps = con.prepareStatement("select * from gallery");
ResultSet rs;
rs = ps.executeQuery();

while(rs.next())
{
	//String comment=rs.getString(4);
%>
<img src=<%=rs.getString(1)%> width=200 height=200><br>

<%} %>
</form>
</html>