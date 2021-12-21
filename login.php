<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="style1.css">
</head>
<body>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.css">
  <div class="header">
  	<h2>Login</h2>
  </div>
<form method="post" action="login.php">

  	<div class="input-group">
  	  <label>Username</label>
  	  <input type="text" name="username" placeholder="eneter your usesrname" >
  	</div>
  	<div class="input-group">
  	  <label>password<i class="fa fa-key" aria-hidden="true"></i></label>
  	 <input type="password" name="password" placeholder="enter your password">
  	</div>
	 <div class="input-group">
  	  <button type="submit" class="btn" name="submit" style="margin-right: 200px">LOGIN</button>
<button  type="reset" class="btn" >CANCEL</button>
  	</div>
  	
  </form>
</body>
<div class="input-group">
<center>
Forgot password?<a href="forgotpass.php"><i class="fa fa-key" aria-hidden="true"></i>Reset password</a><br>
Forgot username?<a href="forgotname.php">Reset username</a><br>
</div>
</html>
<?php
echo"<center>";
echo"<font color=red>";

$host="localhost";
	$dbusername="root";
	$dbpassword="";
	$dbname="sales";
	//create connection//
	$con=new mysqli($host,$dbusername,$dbpassword,$dbname);
	if(!$con){
		echo "not connected to server";
	}
	if (!mysqli_select_db($con,'sales'))
	{
		echo "database not selected";
	}
$username=@$_POST['username'];
$password=@(md5($_POST['password']));

if(isset($_POST['submit'])){
	if($username&&$password){
$check="select*from user where username='".$username."'";
$result1=mysqli_query($con,$check);
$usercheck=mysqli_num_rows($result1);
$checkp="select*from user where password='".$password."'";
$resultp=mysqli_query($con,$checkp);
$usercheckp=mysqli_num_rows($resultp);
if($usercheck==0)
{
	echo"username don't exist,register and try again";
	echo"<br>";
}
if($usercheckp==0)
{
	echo"wrong password";
}
else{
$row=mysqli_fetch_assoc($result1);
$position=$row['position'];
$isexist="SELECT*FROM user  WHERE username='$username' AND password='$password'";
$result2=mysqli_query($con,$isexist);
$checkuser=mysqli_num_rows($result1);
if($checkuser==1){
$_SESSION["position"]=$row['position'];
$_SESSION["username"]=$row['username'];

if($position=="admin"){
			echo"<script>window.open('main/admindashboard.php','_self')</script>";
		}
		else if($position=="manager"){
			echo"<script>window.open('main/managerdashboard.php','_self')</script>";
		}
		else
		{
		echo"<script>window.open('main/cashierdashboard.php','_self')</script>";	
		}
		}
	}
}
else{
	echo"fill all fields";
}
}	

?>