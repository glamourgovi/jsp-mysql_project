<%@ page import ="java.sql.*" %>
<html>
<head>
</head></html>
<%
    String op = request.getParameter("p0");
String np = request.getParameter("p1"); 
    String pwd = request.getParameter("p2");
    Object o=session.getAttribute("uid");
    String uid=String.valueOf(o);

    Connection con=robo.DBManager.getConnection();
    if(np.equals(pwd))
    {
    PreparedStatement ps = con.prepareStatement("update admin set pwd=(?) where pwd=(?)");
    
    
     ps.setString(1,np);
     ps.setString(2,op);
    int i=ps.executeUpdate();
    
   
    
    
    if (i>0) {
    	%><jsp:include page="admin.jsp"/>
    	<%out.println("<br><b><center><font color=GREENYELLOW><h3>Login with your new password.</font></b>");
        
    } 
    else{
    	%><jsp:include page="cngpwd.jsp"/>
    	<%out.println("<br><b><center><font color=red><h3>You entered the Wrong Password.</font></b>");
        
    }
}
else{
	%><jsp:include page="cngpwd.jsp"/>
	<%out.println("<br><b><center><font color=red><h3>Passwords don't match.</font></b>");
    
}%>