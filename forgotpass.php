<center>
<h1>Reset your password here</h1>
</center>
<head>
  <link rel="stylesheet" type="text/css" href="style1.css">
</head>
<?php
	$db = mysqli_connect('localhost', 'root', '', 'sales');

echo"<form action='' method='post'><center>";
	echo"
username:<br><input type='text' name='username' placeholder='enter username'><br/>
new password:<br><input type='password' name='newpass' ><br/>
repeat new  password:<br><input type='password'name='rnewpass'><br/>
	<input type='submit' name='changepassword'><br/>
	";
	$username=@$_POST['username'];
	$newpass=@$_POST['newpass'];
	$rnewpass=@$_POST['rnewpass'];
	$dbusername=@$_POST['dbusername'];
if(isset($_POST['changepassword'])){
	$check="select*from user where username='$username'";
$result=mysqli_query($db,$check);
$rows=mysqli_num_rows($result);
while($row=mysqli_fetch_assoc($result))

	$dbusername=$row['username'];

if($username !=$dbusername){
	echo"username  don't exist";
	echo"<br>";
}
	if($newpass !=$rnewpass){
	echo"new password don't match";
	echo"<br>";
}
elseif($newpass==$rnewpass)
{
$sql="UPDATE user SET password='".md5($newpass)."' WHERE username='$username'";
$query=$db->query($sql);
if($query){
echo"password reset is successful";
echo"<br>";
}
else{
echo"password not reset";
}

}
}
echo"<a href='login.php'>LOGIN HERE<a>";
echo"</center></form>";

?>
