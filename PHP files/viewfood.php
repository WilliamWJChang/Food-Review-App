<html

class="topnav">
    <a class="active" href="/GroupProject/Home.php">Home</a>
    <a href="/GroupProject/Restaurants.php">Restaurants</a>
    <a href="/GroupProject/Accounts.php">Accounts</a>
    <a href="/GroupProject/Reviews.php">Reviews</a>

<a href='login.php'> Logout </a>

</html>

<?php

$page_roles= array('admin','restaurant','author');

//importing DB config
require_once 'dbinfo.php';
require_once 'checksession.php';

//connect to DB
$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

//create and run query
$query = "SELECT * FROM food_data";

$result = $conn->query($query); 
if(!$result) die($conn->error);

//number of rows
$rows = $result->num_rows;

//loop through results
for($j=0; $j<$rows; $j++)
{
	//get each row of data 
	$row = $result->fetch_array(MYSQLI_ASSOC); 

echo <<<_END
	<pre>
	username: <a href='updatefood.php?foodid=$row[food_id]'>$row[username] </a> 
	description: $row[description]
	type: $row[type]
	price: $row[price]	
	restaurant: $row[restaurant]	
	</pre>
	
	<form action='deletefood.php' method='post'>
		<input type='submit' value='DELETE'>
		<input type='hidden' name='foodid' value='$row[food_id]'>
		<input type='hidden' name='delete'>
	</form>
	
_END;

}
 //close connection
$conn->close();



?>