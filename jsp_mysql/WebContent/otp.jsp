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
			margin-top: px;
			border-radius: 15px;
		}
		#time{
		color:white;
		text-align:center;
		}
		body{background:#0F3F5D;}
		td{padding: 3px;}
		h3{margin-top: 100px;color: white;}
	</style>
<script src="js/noback.js"></script>
<div id=time></div>
<script src="js/timer.js">

</script>
</head>
<BODY onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">
    
<form action=otpverify.jsp method=post name=verify>
<center>
	<h3>Please enter the OTP.</h3>
	<div class="d1">
	<table>
		
		<tr><td>OTP :</td><td><input type="text" name="tt" placeholder=""  required></td></tr>
		<tr><td></td><td><button><b>Submit</button></td></tr>
	</table>
	</div>
	</center>
	<%
Object o=session.getAttribute("otp");
String otp=String.valueOf(o);
session.setAttribute("otp",otp);
%>
	
	</form>
</body>
</html>