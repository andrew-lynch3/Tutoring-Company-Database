<!DOCTYPE html>
<html>
	<head>
		<title>Andrew's Tutoring Company</title>
		<style type="text/css">
		body {font-family:"Arial"; font-size:20pt;}
		</style>
	</head>
	<body>
		<h2> Enter New Tutor </h2>
		<?php
		if(!$_POST)
			die("<p>No form data</p>");
		$FNAME=$_POST['FNAME'];
		$LNAME=$_POST['LNAME'];
		$EMAIL=$_POST['EMAIL'];
		$RATE=$_POST['RATE'];
		$START_DATE=$_POST['START_DATE'];
		$STATUS=$_POST['STATUS'];
		
		$db=new mysqli("localhost","root","","tutoring");
		if($db->connect_errno)
			die("<p>Unable to connect to DB</p>");
		
		$query = "INSERT INTO tutors VALUES (NULL,'$FNAME', '$LNAME', '$EMAIL','$RATE','$START_DATE','$STATUS')";
		
		echo "<p>$query</p>";
		
		$result=$db->query($query);
		if($result==FALSE)
			echo "<p>Query Error: " . $db->error . "</p>";
		else
			echo "<p> New Tutor added to Database</p>";
				
		?>
	<h3> <a href="tutor.php"> Return to Main Menu</a></h3>
	</body>
</html>