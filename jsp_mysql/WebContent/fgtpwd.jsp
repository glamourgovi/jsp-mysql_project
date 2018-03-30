<!DOCTYPE html>
<html>
<head>
	<title>Robogenesis</title>
	<link rel="shortcut icon" href="C:\Users\Lenovo\Desktop\robo.jpg" />
	<script src="js/noback.js"></script>
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
			height: 100px;
			width: 350px;
			background-color: #A8A9B7;
			color: black;
			//padding: 10px;
			padding-top: 40px;
			margin-top: px;
			border-radius: 15px;
		}
		body{background:#0F3F5D;}
		td{padding: 3px;}
		h3{margin-top: 100px;color: white;}
	</style>

</head>
<BODY onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">
    
<form action=Email.jsp method=post>
<center>
	<h3>Please enter your email address.You will receive an OTP.</h3>
	<div class="d1">
	<table>
		
		<tr><td>Username/Email :</td><td><input type="Email" name="uid" placeholder=""  required></td></tr>
		<tr><td></td><td><button><b>Submit</button></td></tr>
		
	</table>
	<a href="admin.jsp">Back to home</a>
	</div>
	</center>
	</form>
</body>
</html>