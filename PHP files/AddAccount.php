<html>
	<head>
	</head>
	<body>
		<form method='post' action='AddAccount.php'>
			<pre>
				forename <input type="text" name="Forename"></br></br>
				username <input type="text" name="Username"></br></br>
				surname <input type="text" name="Surname"></br></br>
				role <input type="text" name="role"><br><br>
				password <input type="text" name="Password"></br></br>
				<input type='submit' value='Create Account'>
				</br></br>

			</pre>
		</form>
	</body>
<html>

<?php

$page_roles= array('admin','author');


require_once 'dbinfo.php';
require_once 'checksession.php';

//connecting to DB
$conn = new mysqli($hn, $un, $pw, $db);
if ($conn->connect_error) die($conn->connect_error);

//processing
if(isset($_POST['Username'])){
	
	//get data from POST object
	$forename = $_POST['Forename'];
	$username = $_POST['Username'];
	$surname = $_POST['Surname'];
	$password = $_POST['Password'];
	$role = $_POST['role'];
	$password = password_hash($password, PASSWORD_DEFAULT);

//create query		
	$query="INSERT INTO users (Forename, Username, Surname, Password) VALUES ".
		"('$forename','$username','$surname','$password')";
	
//run query
	$result = $conn->query($query);
		if(!$result) die($conn->error);

//roles
	$query2 = "insert into roles (username, role) values ('$username','$role')";
	$result2 = $conn->query($query2);
		if(!$result2) die($conn->error);

	//forward the user to
		header("Location: login.php");
	
	
}

$conn->close();


?>