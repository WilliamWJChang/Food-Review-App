<?php

$page_roles= array('admin','restaurant');

require_once  'dbinfo.php';
require_once 'checksession.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

if(isset($_GET['foodid'])){
	
$foodid = $_GET['foodid'];	

$query = "SELECT * FROM Food_data where food_id=$foodid ";

$result = $conn->query($query); 
if(!$result) die($conn->error);

$rows = $result->num_rows;

for($j=0; $j<$rows; $j++)
{
	//$result->data_seek($j); 
	$row = $result->fetch_array(MYSQLI_ASSOC); 
		
echo <<<_END
	
	<form action='updatefood.php' method='post'>

	<pre>
	
	username: <input type='text' name='username' value='$row[username]'>
	description: <input type='text' name='description' value='$row[description]'>
	type: <input type='text' name='type' value='$row[type]'>
	price: <input type='text' name='price' value='$row[price]'>
	restaurant: <input type='text' name='restaurant' value='$row[restaurant]'>
		
	</pre>
		
		<input type='hidden' name='update' value='yes'>
		<input type='hidden' name='food_id' value='$row[food_id]'>
		<input type='submit' value='UPDATE ITEM'>	
	</form>
	
_END;

}

}


if(isset($_POST['food_id'])){
	
	$food_id = $_POST['food_id'];
	$username = $_POST['username'];
	$description = $_POST['description'];
	$type = $_POST['type'];
	$price = $_POST['price'];
	$restaurant = $_POST['restaurant'];
	
	$query = "Update Food_data set username='$username', description='$description', type='$type', price='$price', restaurant='$restaurant' where food_id = $food_id ";
	echo $query;

	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	header("Location: viewfood.php");
	
	
}

//$conn->close();



?>