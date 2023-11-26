<?php

$page_roles= array('admin','restaurant');

//import credentials for db
require_once  'dbinfo.php';

//connect to db
$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);



if(isset($_POST['foodid']))
{
	$foodid = $_POST['foodid'];

	$query = "DELETE FROM Food_data WHERE food_id=$foodid ";
	
	//Run the query
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	//Return to the viewfood page
	header("Location: viewfood.php");
	
}


?>