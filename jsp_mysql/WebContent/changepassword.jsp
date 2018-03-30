<!DOCTYPE html>
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
			height: 100px;
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
<script src="js/noback.js"></script>
</head>
<BODY onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">
    
<form action="chkpwd.jsp" method=post>
<center>
	<div class="d1">
	<table>
		<tr><td>New Password :</td><td><input type="Password" name="p1" placeholder=""></td></tr>
		<tr><td>Confirm Password :</td><td><input type="Password" name="p2" placeholder=""></td></tr>
		<tr><td></td><td><button><b>Submit</button></td></tr>
	</table>
	</div>
	</center>
	</form>
</body>
</html>