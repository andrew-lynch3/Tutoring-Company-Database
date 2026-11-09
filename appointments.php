<!DOCTYPE html>
<html>
	<head>
		<title>Andrew's Tutoring Company</title>
		<style type="text/css">
		body {font-family:"Arial"; font-size:20pt;}
		</style>
	</head>
	<body>
		<h2> Appointments </h2>
		<?php
		$db=new mysqli("localhost","root","","tutoring");
		if($db->connect_errno)
			die("<p>Unable to connect to DB</p>");
		
		$query = "SELECT * FROM appointments";
		
		echo "<p>$query</p>";
		
		$result=$db->query($query);
		if($result==FALSE)
			echo "<p>Query Error: " . $db->error . "</p>";
		
		echo '<table border="1">';
		echo "<tr><th>Appointment ID</th><th>Start Date/Time</th><th>Duration(Mins)</th><th>Type</th><th>Student ID</th><th>Tutor ID</th></tr>";
		while($row=$result->fetch_assoc() )
		{
			echo "<tr>";
			echo "<td>" . $row['appointment_id'] . "</td>";
			echo "<td>" . $row['start_time'] . "</td>";
			echo "<td>" . $row['duration'] . "</td>";
			echo "<td>" . $row['type'] . "</td>";
			echo "<td>" . $row['student_id'] . "</td>";
			echo "<td>" . $row['tutor_id'] . "</td>";
			echo "</tr>";
		}
		echo "</table>";
		?>
		<h3> <a href="tutor.php"> Return to Main Menu</a></h3>
	</body>
</html>