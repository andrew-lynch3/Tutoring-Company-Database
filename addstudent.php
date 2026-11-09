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
		
		<form method="post" action="processstudent.php">
		
		<table border="1">
		<tr>
			<th>Student First Name:</th>
			<td><input type="text" name="FNAME" /> </td>
		</tr>
		<tr>
			<th>Student Last Name:</th>
			<td><input type="text" name="LNAME" /> </td>
		</tr>
		<tr>
			<th>Birthday:</th>
			<td><input type="date" name="BIRTHDAY" /> </td>
		</tr>
		<tr>
			<th>Parent Name:</th>
			<td><input type="text" name="PNAME" /> </td>
		</tr>
		<tr>
			<th>Parent Phone:</th>
			<td><input type="number" name="PPHONE" /> </td>
		</tr>
		<tr>
			<th>Grade:</th>
			<td><input type="number" name="GRADE" /> </td>
		</tr>
		<tr>
			<th>Age:</th>
			<td><input type="number" name="AGE" /> </td>
		</tr>
		<tr>
			<th>School:</th>
			<td><input type="text" name="SCHOOL" /> </td>
		</tr>
		<tr>
			<th>Goals:</th>
			<td><input type="text" name="GOALS" /> </td>
		</tr>
		</table>
		<input type="submit" value="Add STUDENT" />
		
		</form>
		<h3> <a href="tutor.php"> Return to Main Menu</a></h3>
	</body>
</html>