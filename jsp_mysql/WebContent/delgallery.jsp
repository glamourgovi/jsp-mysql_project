<%@ page import ="java.sql.*" %>
<%@ page import ="java.io.*" %>

<%
String no=request.getParameter("gal");
Connection con=null;

ResultSet rs=null;
con=robo.DBManager.getConnection();
PreparedStatement ps2= con.prepareStatement("select image from gallery where no=(?)");
ps2.setString(1,no);
rs=ps2.executeQuery();
rs.next();
String path=rs.getString(1);
File f=new File("C:/Users/Richa/workspace/robo/WebContent/"+path);
f.delete();

PreparedStatement ps1= con.prepareStatement("delete from gallery where no=(?)");
ps1.setString(1,no);
int i=ps1.executeUpdate();
if(i>=0)
{
	response.sendRedirect("dashboard.jsp");
	}
%>
