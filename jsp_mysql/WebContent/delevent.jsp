<script src="js/alert.js"></script>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.io.*" %>
<%
String path=null;
String s=request.getParameter("eve");
Connection con=null;

ResultSet rs=null;
con=robo.DBManager.getConnection();
	PreparedStatement ps3 = con.prepareStatement("select image from event_image where event_name=(?)");
	ps3.setString(1,s);
	ResultSet rs1=ps3.executeQuery();
	while(rs1.next())
	{
		 path=rs1.getString(1);
		File f=new File("C:/Users/Richa/workspace/robo/WebContent/"+path);
		f.delete();
	}
PreparedStatement ps = con.prepareStatement("delete from event_image where event_name=(?)");
ps.setString(1,s);
int i=ps.executeUpdate();
if(i>=0)
{
}
	

	PreparedStatement ps2 = con.prepareStatement("delete from event where name=(?)");
	ps2.setString(1,s);
	int j=ps2.executeUpdate();
if (j>=0) 
    response.sendRedirect("dashboard.jsp");




%>