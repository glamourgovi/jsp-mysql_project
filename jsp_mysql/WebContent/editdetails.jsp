<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>Robogenesis</title>
	<link rel="shortcut icon" href="C:\Users\Lenovo\Desktop\robo.jpg" />
	<style type="text/css">
				button{border-radius: 5px;
			background-color:#0773B7;
			height: 25px;
			width: 150px;
			border:0;
			color: white;
			float: right;
		}
		.d1
		{
			height: 230px;
			width: 400px;
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
<%
Connection con=robo.DBManager.getConnection();
PreparedStatement pstmt=null;
ResultSet rs=null;
Object o=session.getAttribute("uid");
String uid=String.valueOf(o);
Object o1=session.getAttribute("pwd");
String pwd=String.valueOf(o1);
pstmt=con.prepareStatement("select * from admin where id=(?) and pwd=(?)");
pstmt.setString(1,uid);
pstmt.setString(2,pwd);
rs = pstmt.executeQuery();
if(rs.next())
{
String email=rs.getString(1);
session.setAttribute("email",email);
 %>
<form action=editdetails2.jsp method=post>
<center>
	<div class="d1">
	<table>
	   	<tr><td>Name:</td><td><input type="text" name="a1" placeholder="" value="<%=rs.getString(3)%>"  required></td></tr>
	   	<tr><td>Email:</td><td><input type="email" name="a2" placeholder=""  value="<%=rs.getString(1)%>" required></td></tr>
		<tr><td>Mobile:</td><td><input type="text" name="a3" placeholder="" value="<%= rs.getString(4)%>"  required></td></tr>
		<tr><td></td><td><button><b>Edit</button></td></tr>
		<%} %> 
	</table>
	<a href="dashboard.jsp">Back to home</a>
	</div>
	</center>
	</form>
</body>
</html>