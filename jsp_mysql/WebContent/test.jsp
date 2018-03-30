
<%@ page import ="java.sql.*" %>
<%
PreparedStatement ps=null;
PreparedStatement p=null;
PreparedStatement p1=null;
String no=null;
String email=null;
String comment=null;
String name=null;
int k=0;
ResultSet rs=null;
String reply=null;

Connection con=robo.DBManager.getConnection();

    
String select[] = request.getParameterValues("id"); 
if (select != null && select.length != 0) {
for (int i = 0; i < select.length; i++) {
	  
	 ps = con.prepareStatement("select * from test1 where email=(?)");
	ps.setString(1,select[i]);
	rs=ps.executeQuery();
	if(rs.next())
	{
	 name=rs.getString(2);
	 email=rs.getString(3);
	 comment=rs.getString(4);
	 reply=request.getParameter(email);
	 
	}
		 p=con.prepareStatement("insert into test2 values (?,?,?,?,?)");
		p.setString(1,null);
		p.setString(2,name)	;
		p.setString(3,email);
		p.setString(4,comment);
		p.setString(5,reply);
		k=p.executeUpdate();
	 }
}
p1=con.prepareStatement("delete from test1 ");

int j=p1.executeUpdate();
	if(j>=0)

	response.sendRedirect("dashboard.jsp");
 
%>
