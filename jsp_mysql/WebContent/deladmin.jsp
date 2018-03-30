
<%@ page import ="java.sql.*" %>
<% Connection con=robo.DBManager.getConnection();
PreparedStatement pstmt=null;

   Object o=session.getAttribute("uid");
String uid=String.valueOf(o);
Object o1=session.getAttribute("pwd");
String pwd=String.valueOf(o1);
pstmt=con.prepareStatement("select * from admin where id=(?) and pwd=(?)");
pstmt.setString(1,uid);
pstmt.setString(2,pwd);
ResultSet rs1 = pstmt.executeQuery();
if(rs1.next())
{
if(rs1.getString(6).equals("Super Admin"))
{
%><!DOCTYPE html>
<html>
<head>
	<title>Robogenesis</title>
	<link rel="shortcut icon" href="C:\Users\Lenovo\Desktop\robo.jpg" />
	<style type="text/css">
				button{border-radius: 5px;
			background-color:#0773B7;
			height: 25px;
			width: 70px;
			border:0;
			color: white;
			float: right;
		}
		.d1
		{
			height: 210px;
			width: 350px;
			background-color: #A8A9B7;
			color: black;
			//padding: 10px;
			padding-top: 40px;
			margin-top: 200px;
			border-radius: 15px;
		}
		body{background:#0F3F5D;}
		td{padding: 3px;}
	</style>

</head>
<body>
<form action=deleteadmin.jsp method=post>
<center>
	<div class="d1">
	<table>
	   	<tr><td>Email:</td><td><%
                					PreparedStatement ps=con.prepareStatement("select id from admin where pos=(?)");
	   								ps.setString(1,"Admin");
                      				ResultSet rs=ps.executeQuery();
                      
                						%>						
                						<tr>
                                        <td>
                                        <select name=p>
                                        <%while(rs.next()){ %>
                                            <option><%=rs.getString(1) %></option>
                                            <%} %> </select></td>
                      	
		<tr><td></td><td><button><b>Submit</button></td></tr> 
	</table>
	<a href="dashboard.jsp">Back to home</a>
	</div>
	
	</center>
	</form>
</body>
</html>
<%}
else{
	response.sendRedirect("dashboard.jsp");
}

}
else{
	response.sendRedirect("admin.jsp");
}%>
