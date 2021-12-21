<html>
<center>
<h1>Reset your username here</h1>
</center>
<head>
  <link rel="stylesheet" type="text/css" href="style1.css">
</head>
<form action='' method='post'><center>
First name:<br><input type='text' name='firstname' placeholder='enter your first name' required><br/>
New username:<br><input type='text' name='newusername' required ><br/>
	<input type='submit' name='changeusername'><br/>
</html>

<?php

// initializing variables
$firstname="";
$username = "";
$newusername = "";
$errors = array(); 

// connect to the database
$db = mysqli_connect('localhost', 'root', '', 'sales');

// REGISTER USER
if (isset($_POST['changeusername'])) {
  // receive all input values from the form
    $firstname= mysqli_real_escape_string($db, $_POST['firstname']);
    $newusername = mysqli_real_escape_string($db, $_POST['newusername']);

  // form validation: ensure that the form is correctly filled ...
  // by adding (array_push()) corresponding error unto $errors array
   if (empty($firstname)) { array_push($errors, "first name is required"); }
  if (empty($newusername)) { array_push($errors, "new username is required"); }

  
 $check="select*from user where firstname='".$firstname."'";
$result1=mysqli_query($db,$check);
$usercheck=mysqli_num_rows($result1);
if($usercheck==0)
{
	echo"the name  don't exist,try again";
	echo"<br>";
}
else{
  // first check the database to make sure 
  // a user does not already exist with the same username and/or email
  
 $check1="select*from user where username='".$newusername."'";
$result=mysqli_query($db,$check1);
$usercheck1=mysqli_num_rows($result);
if($usercheck1==1)
{
	echo"username exist,use a different name";
	echo"<br>";
}
  

  else {
  	
	$sql="UPDATE user SET username='".($newusername)."' WHERE firstname='$firstname'";
	$query=$db->query($sql);
if($query){
echo"username reset is successful";
echo"<br>";
}
else{
echo"username not reset";
}
  }
}
}
echo"<a href='login.php'>LOGIN HERE</a>";	
?>