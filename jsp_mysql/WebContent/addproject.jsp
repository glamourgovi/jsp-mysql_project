<html>
<head>
<script src="js/alert.js"></script>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.io.*" %>
<%!
   int i;
%>
<%
Connection con=null;
PreparedStatement ps= null;

con=robo.DBManager.getConnection();
	
    String ptype = request.getParameter("t1");    
    String pname = request.getParameter("t2");
    String pdetail = request.getParameter("t3");
   session.setAttribute("pname",pname);
    
    
     ps = con.prepareStatement("insert into project values(?,?,?,?)");
    ps.setInt(1,0);
    ps.setString(2,ptype);
    ps.setString(3,pname);
    ps.setString(4,pdetail);
    

        i=ps.executeUpdate();
    if(i==1)
    {
    	response.sendRedirect("dashboard.jsp");
        
    }

%>
</html>