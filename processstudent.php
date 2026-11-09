<!DOCTYPE html>
<html>
	<head>
		<title>Andrew's Tutoring Company</title>
		<style type="text/css">
		body {font-family:"Arial"; font-size:20pt;}
		</style>
	</head>
	<body>
		<h2> Enter New Student </h2>
		<?php
		if(!$_POST)
			die("<p>No form data</p>");
		$FNAME=$_POST['FNAME'];
		$LNAME=$_POST['LNAME'];
		$BIRTHDAY=$_POST['BIRTHDAY'];
		$PNAME=$_POST['PNAME'];
		$PPHONE=$_POST['PPHONE'];
		$GRADE=$_POST['GRADE'];
		$SCHOOL=$_POST['SCHOOL'];
		$GOALS=$_POST['GOALS'];
		
		$db=new mysqli("localhost","root","","tutoring");
		if($db->connect_errno)
			die("<p>Unable to connect to DB</p>");
		
		$query = "INSERT INTO students VALUES (NULL,'$FNAME', '$LNAME', '$BIRTHDAY','$PNAME','$PPHONE','$GRADE','$SCHOOL','$GOALS')";
		
		echo "<p>$query</p>";
		
		$result=$db->query($query);
		if($result==FALSE)
			echo "<p>Query Error: " . $db->error . "</p>";
		else
			echo "<p> New Student added to Database</p>";
				
		?>
	<h3> <a href="tutor.php"> Return to Main Menu</a></h3>
	</body>
</html>