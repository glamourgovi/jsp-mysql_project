
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
			float: center;
		}
		table{
		margin-top:-150px;}
		.c
		{
		text-align:center;
		}
		.d1
		{
			height: 270px;
			width: 360px;
			background-color: #A8A9B7;
			color: black;
			//padding: 10px;
			padding-top: 40px;
			margin-top: 0px;
			border-radius: 15px;
		}
		body{background:#0F3F5D;}
		td{padding: 3px;}
		h2{
		margin-top:150px;
		color:white;
		text-align:center;}
	</style>

</head>

<html>
<h2>Select the privileges:</h2>
<center>
<div class=d1>

<form action =auth.jsp method=post>
<table>

<tr><td>Testimonial</td><td><input type="checkbox" name="id" class=c value=testimonial></td> </tr><BR><br>

<tr><td>Project:</td><td><input type="checkbox" name="id" class=c value=iproject>Insert </td><td><input type="checkbox" name="id" class=c value=uproject>Update</td><td><input type="checkbox" name="id" class=c value=dproject>Delete</td> </tr><BR><br>


<tr><td>Gallery:</td><td><input type="checkbox" name="id" class=c value=igallery>Insert</td><td> </td><td><input type="checkbox" name="id" class=c value=dgallery>Delete </td></tr><BR><br>

<tr><td>Event:</td><td> <input type="checkbox" name="id" class=c value=ievent>Insert </td><td></td><td><input type="checkbox" name="id" class=c value=devent>Delete</td></tr> <BR><br>

<tr><td>Our Team:</td><td><input type="checkbox" name="id" class=c value=iteam>Insert </td><td><input type="checkbox" name="id" class=c value=uteam>Update</td><td><input type="checkbox" name="id" class=c value=dteam>Delete</td></tr>
 <BR><br>


<tr><td><button>Submit</button></td></tr>


</table>
</form>

</div>
</center>
</html>