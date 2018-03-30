<%@ page import ="java.sql.*" %>
<%@ page import ="java.io.*" %>
<%
String uid= request.getParameter("p");
    
    Connection con=robo.DBManager.getConnection();
    PreparedStatement ps1 = con.prepareStatement("select image from admin where id=(?)");
    ps1.setString(1,uid);
    ResultSet rs=ps1.executeQuery();
    if(rs.next())
    {
    String path=rs.getString(1);
    File f=new File("C:/Users/Richa/workspace/robo/WebContent/"+path);
    f.delete();
    }
    PreparedStatement ps = con.prepareStatement("delete from admin where id=(?)");
    
     ps.setString(1,uid);
    int i=ps.executeUpdate();
    if (i>=0) {
    	%><jsp:include page="deladmin.jsp"/>
    	<%out.println("<b><center><font color=greenyellow>Admin was deleted.</font></b>");
    	
    	    }%>
    

