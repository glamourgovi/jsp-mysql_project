    <script src="js/alert.js"></script>
    <%@ page import ="java.sql.*" %>
<%
Connection con=null;


con=robo.DBManager.getConnection();

Object o1=session.getAttribute("n");
String s=String.valueOf(o1);
int n=Integer.parseInt(s);
Object o2=session.getAttribute("p");
String p=String.valueOf(o2);

String name=request.getParameter("e1");


PreparedStatement ps = con.prepareStatement("update project_type set Type=(?) where no=(?)");
ps.setString(1,name);
ps.setInt(2,n);
int i=ps.executeUpdate();

if (i>=0) {
	PreparedStatement ps2 = con.prepareStatement("update project set project_type=(?) where project_type=(?)");
	ps2.setString(1,name);
	ps2.setString(2,p);
	int j=ps2.executeUpdate();
	if(j>=0)
    response.sendRedirect("dashboard.jsp");
}

%>