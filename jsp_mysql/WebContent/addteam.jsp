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
	
    String name = request.getParameter("t1");    
    String pos = request.getParameter("t2");
    String email = request.getParameter("t3");
    String contact = request.getParameter("t4");
    String abt = request.getParameter("t5");
   
    
    
    ps = con.prepareStatement("insert into team values(?,?,?,?,?,?)");
    ps.setString(1,name);
    ps.setString(2,abt);
    ps.setString(3,email);
    ps.setString(4,null);
    ps.setString(5,pos);
    ps.setString(6,contact);
    

        i=ps.executeUpdate();
    if(i==1)
    {
    	response.sendRedirect("dashboard.jsp");
        
    }

%>
</html>