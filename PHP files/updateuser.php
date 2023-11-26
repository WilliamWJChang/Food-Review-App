<?php

$page_roles= array('admin');

//importing DB config
require_once 'dbinfo.php';
require_once 'checksession.php';

//connect to DB
$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

//get data from link
if(isset($_GET['username'])){
	$username = $_GET['username'];
	
	//create and run query
	$query = "SELECT * FROM users where username= '$username' ";
	
	//run query
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	//number of rows
		$rows = $result->num_rows;

	//loop through results
	for($j=0; $j<$rows; $j++)
{
	//get each new row of data 
	$row = $result->fetch_array(MYSQLI_ASSOC); 

	echo <<<_END
	<pre>
	<form method='POST' action ='updateuser.php'>
	username:$row[username]
	forename: <input type= 'text' name='forename' value='$row[forename]'>
	surname: <input type= 'text' name='surname' value='$row[surname]'>
	<input type= 'hidden' name= 'username' value='$row[username]'>
	<input type='submit' value='UPDATE'>
	</form>
	</pre>
	
	
_END;

}
}

//updating data
if(isset($_POST['username'])){
	$username = $_POST['username'];
	$forename = $_POST['forename'];
	$surname = $_POST['surname'];
	

		
		//create the query
		$query = "update users set forename='$forename', surname='$surname' where username='$username' ";
		echo $query.'<br>';
		
		//run the query
		$result = $conn->query($query);
		if(!$result) die($conn->error);
	
		//forward the query
		header("Location: viewusers.php");
}	




?>