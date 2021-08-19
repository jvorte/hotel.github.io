<?php

// include ('db.php');
include('../dbconnection/config.php');

$id=$_GET['eid'];
if($id=="")
{
echo '<script>alert("Sorry ! Wrong Entry") </script>' ;
		header("Location: messages.php");


}

else{
$view="DELETE FROM `contact` WHERE id ='$id' ";

	// if($re = mysqli_query($con,$view))
	if($re = $conn->query($view))
	{
		echo '<script>alert("News Letter Subscriber Remove") </script>' ;
		header("Location: messages.php");
	}


}







?>