<!DOCTYPE html>
<html>
<head>
	<title>Robogenesis</title>
	<link rel="shortcut icon" href="C:\Users\Lenovo\Desktop\robo.jpg" />
	<style type="text/css">
		*{
			padding: 0;
			margin: 0;
		}
		body{
			background: radial-gradient(#0314F5,#020857,#00043E, #080808);
		}
		.d1
		{
			height: 250px;
			width: 400px;
			background-color: rgba(0,0,0,0.6);
			color: white;
			//padding: 10px;
			padding-top: 40px;
			margin-top: 100px;
			border-radius: 15px;
		}
		select{width: 165px;}
		th,td{padding: 5px;}
		table,tr,td{
		color:white;}
		button{border-radius: 5px;
			background-color:#0314F5;
			height: 25px;
			width: 70px;
			border:0;
			color: white;
			float: right;
			cursor: pointer;
		}
		button:hover{filter: blur(0.3px);
          			font-size: 15px;
		           }
		a{color: white;
			float: right;
			text-decoration: none;}
		a:hover{opacity: 0.6}
	</style>
	<script src="js/noback.js"></script>
</head><BODY onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">
  		 
  		 <form action=login.jsp method=post>
  		  <center>
      		<div class="d1">
      		<center><h3>LOGIN HERE</h3></center>
      				<table>
	             <tr> <td>Login As :</td><td><select name="a1"><option>Super Admin</option><option>Admin</option></select></td></tr>
                 <tr><td> UserName :</td><td><input type="email" name="uid" placeholder="Enter Mail id" required></td></tr>
                 <tr><td> Password :</td><td><input type="Password" name="pwd" placeholder="Password" required></td></tr>
                 <tr><td> </td>
                 <td> <button><b>Submit</button></td></tr>
                 <tr><td> </td>
                 <td> <a href="fgtpwd.jsp"><i>forgot?</i></a></td></tr>
                  </table>
    		</div>
    	  </center>
    	  </form>
		</body>
</html>