<script src="js/alert.js"></script>
<%@ page import ="java.sql.*" %>
<%
Connection con=null;
con=robo.DBManager.getConnection();
Object o1=session.getAttribute("n");
String s=String.valueOf(o1);
int n=Integer.parseInt(s);

String name=request.getParameter("e1");
String detail=request.getParameter("e2");

PreparedStatement ps = con.prepareStatement("update project set project_name=(?), details=(?) where no=(?)");
ps.setString(1,name);
ps.setString(2,detail);
ps.setInt(3,n);
int i=ps.executeUpdate();

if (i>=0) {
    response.sendRedirect("dashboard.jsp");
}


%>