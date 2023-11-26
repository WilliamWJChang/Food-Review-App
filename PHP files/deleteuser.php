<?php

$page_roles= array('admin');

//import credentials for db
require_once 'dbinfo.php';
require_once 'checksession.php';

//connect to db
$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);



if(isset($_POST['delete']))
{
	$username = $_POST['username'];

	$query = "DELETE FROM users WHERE username='$username' ";
	
	//Run the query
	$result = $conn->query($query); 
	if(!$result) die($conn->error);

	
	//Return to the viewusers page
	header("Location: Viewusers.php");
	
}


?>