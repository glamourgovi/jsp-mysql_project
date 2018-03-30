<%@ page import ="java.sql.*" %>
<%
    String uid = request.getParameter("uid");    
    String pwd = request.getParameter("pwd");
    String pos= request.getParameter("a1");
    session.setAttribute("uid",uid);
    session.setAttribute("pwd",pwd);
    session.setAttribute("pos",pos);
    Connection con=null;
    try{
    	Class.forName("com.mysql.jdbc.Driver");  
    	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/robo","root","govi");
    }catch(Exception ee)
    {
    	ee.printStackTrace();
    }
    PreparedStatement ps = con.prepareStatement("select * from admin where id=(?) and pwd=(?) and pos=(?)");
    ResultSet rs;
     ps.setString(1,uid);
     ps.setString(2,pwd);
     ps.setString(3,pos);
    rs=ps.executeQuery();
    if (rs.next()) {
    	
        response.sendRedirect("dashboard.jsp");
    }
   else {%><jsp:include page="admin.jsp"/>
<%out.println("<b><center><h3><font color=red>Invalid username or password.</font></b>");
    } 
%>
