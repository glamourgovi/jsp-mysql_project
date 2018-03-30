    <%@ page import ="java.sql.*" %>

<html>
<head>
<script src="js/noback.js"></script>
</head>
<body>
<%String p1=request.getParameter("p1");
String p2=request.getParameter("p2");
Object o1=session.getAttribute("uid");
String uid=String.valueOf(o1);
session.setAttribute("uid",uid);

try{
if(p1.equals(p2))
{
	 Connection con=robo.DBManager.getConnection();
	 String query="UPDATE robo.admin SET pwd=? WHERE id=?";

	    PreparedStatement ps = con.prepareStatement(query);
	    ps.setString(1,p1);
	    ps.setString(2,uid);
	    
	    ps.executeUpdate();
	    	
	    %><jsp:include page="admin.jsp"/>
		<%out.println("<b><center><h3><font color=GREENYELLOW>Login with your new password.</font></b>");

}
else{
	
	%><jsp:include page="changepassword.jsp"/>
	<%out.println("<b><center><font color=red>Passwords don't match.</font></b>");

}
}catch(Exception e){e.printStackTrace();}
%>
</body>
</html>