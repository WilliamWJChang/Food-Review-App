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
		<form method='post' action='addreview.php'>
			<pre>
				restaurant: <input type='text' name='restaurant'><br></br>
				username: <input type='text' name='username'></br></br>
				Review_text: <input type='text' name='Review_text'></br></br>
				<p>Rating </p>
					<input type="radio" name="Rating"  value="1" checked >1
					<input type="radio" name="Rating"  value="2">2
					<input type="radio" name="Rating"  value="3">3
				Date: <input type='text' name='Date'></br></br>

		 
				<input type='submit' value='Add Review'>
			</pre>
		</form>
	</body>
<html>

<?php
$page_roles= array('admin', 'author');

//import DB config
require_once 'dbinfo.php';
require_once 'checksession.php';

//connecting to DB
$conn = new mysqli($hn, $un, $pw, $db);
if ($conn->connect_error) die($conn->connect_error);

//processing
if(isset($_POST['username'])){
	
	
//get data from POST object
	$restaurant = $_POST['restaurant'];
	$username = $_POST['username'];
	$review_text = $_POST['review_text'];
	$rating = $_POST['rating'];

//create query		
	$query="INSERT INTO reviews_data (restaurant, username, review_text, rating,) VALUES ".
		"('$restaurant','$username','$review_text','$rating')";
	
//run query
	$result = $conn->query($query);
		if(!$result) die($conn->error);
	//forward the user to
		header("Location: viewreviews.php");
	
	
}

$conn->close();


?>