<%@ page import ="java.sql.*" %>
<%
Connection con=null;
con=robo.DBManager.getConnection();
Object o1=session.getAttribute("email");
String email=String.valueOf(o1);


String name=request.getParameter("a1");
String mail=request.getParameter("a2");
String mob=request.getParameter("a3");


PreparedStatement ps = con.prepareStatement("update admin set name=(?), id=(?),mobile=(?) where id=(?)");
ps.setString(1,name);
ps.setString(2,mail);
ps.setString(3,mob);
ps.setString(4,email);
int i=ps.executeUpdate();

if (i>=0) {
%>
	
	<jsp:include page="admin.jsp"/>
	<%out.println("<b><center><h3><font color=greenyellow>Login with new credentials.</font></b>");

    
}


%>