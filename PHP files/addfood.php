<html

class="topnav">
    <a class="active" href="/GroupProject/Home.php">Home</a>
    <a href="/GroupProject/Restaurants.php">Restaurants</a>
    <a href="/GroupProject/Accounts.php">Accounts</a>
    <a href="/GroupProject/Reviews.php">Reviews</a>

<a href='login.php'> Logout </a>

<br>


	<head>
	</head>
	<body>
		<form method='post' action='addfood.php'>
			<pre>
				username: <input type='text' name='username'></br></br>
				description: <input type='text' name='description'></br></br>
				type: <input type='text' name='type'></br></br>
				price: <input type='text' name='price'></br></br>
				restaurant: <input type='text' name='restaurant'></br></br>
				<input type='submit' value='Add item'>
			</pre>
		</form>
	</body>
</html>


<?php
$page_roles= array('admin','restaurant');


require_once 'dbinfo.php';
require_once 'checksession.php';


//connecting to DB
$conn = new mysqli($hn, $un, $pw, $db);
if ($conn->connect_error) die($conn->connect_error);

//processing
if(isset($_POST['restaurant'])){
	
	//get data from POST object
	$username = $_POST['username'];
	$description = $_POST['description'];
	$type = $_POST['type'];
	$price = $_POST['price'];
	$restaurant = $_POST['restaurant'];
	

//create query		
	$query="INSERT INTO food_data (username, description, type, price, restaurant) VALUES ".
		"('$username','$description','$type','$price','$restaurant')";
	echo $query;
//run query
	$result = $conn->query($query);
		if(!$result) die($conn->error);
	//forward the user to
		header("Location: viewfood.php");
	
	
}

$conn->close();


?>