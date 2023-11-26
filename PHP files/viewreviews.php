<html

class="topnav">
    <a class="active" href="/GroupProject/Home.php">Home</a>
    <a href="/GroupProject/Restaurants.php">Restaurants</a>
    <a href="/GroupProject/Accounts.php">Accounts</a>
    <a href="/GroupProject/Reviews.php">Reviews</a>

<div>


</div>

<body>
    <a href='login.php'> Logout </a>
</body>
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
$query = "SELECT * FROM reviews_data";

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
	restaurant: $row[restaurant] </a>
	username: $row[username]
	review: $row[review_text]
	rating: $row[rating]
	</pre>

	
	
_END;

}
 //close connection
$conn->close();



?>