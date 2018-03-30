<%@ page import ="java.sql.*" %>
<%@ page import ="java.io.*" %>
<%!
   int i;
%>
<%

Connection con=null;
PreparedStatement ps= null;
ResultSet rs=null;
	
    String ename = request.getParameter("ename");
    
    String eadd=request.getParameter("eadd");
    con=robo.DBManager.getConnection();
     ps = con.prepareStatement("insert into event values(?,?,?)");
    ps.setInt(1,0);
    ps.setString(2,ename);
    ps.setString(3,eadd);
    i=ps.executeUpdate();
    if(i==1)
    {
    	response.sendRedirect("dashboard.jsp");
    }

%>
