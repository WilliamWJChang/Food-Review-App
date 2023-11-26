<html

class="topnav">
    <a class="active" href="/GroupProject/Home.php">Home</a>
    <a href="/GroupProject/Restaurants.php">Restaurants</a>
    <a href="/GroupProject/Accounts.php">Accounts</a>
    <a href="/GroupProject/Reviews.php">Reviews</a>

<a href='login.php'> Logout </a>

<br>

</html>


<?php

$page_roles= array('admin');

//importing DB config
require_once  'dbinfo.php';
require_once 'checksession.php';

//connect to DB
$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

//create and run query
$query = "SELECT * FROM users";

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
	forename: <a href='updateuser.php?username=$row[username]'>$row[forename] </a>
	username: $row[username]
	surname: $row[surname]
	password: $row[password]	
	</pre>
	
	<form action='deleteuser.php' method='post'>
		<input type='submit' value='DELETE'>
		<input type='hidden' name='delete'>
		<input type='hidden' name='username' value='$row[username]'>
	</form>
	
_END;

}
 //close connection
$conn->close();



?>

<html>
<a href='login.php'> Logout </a>
</html>