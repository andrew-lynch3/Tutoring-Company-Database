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
		
		<form method="post" action="processtutor.php">
		
		<table border="1">
		<tr>
			<th>Tutor First Name:</th>
			<td><input type="text" name="FNAME" /> </td>
		</tr>
		<tr>
			<th>Tutor Last Name:</th>
			<td><input type="text" name="LNAME" /> </td>
		</tr>
		<tr>
			<th>Email:</th>
			<td><input type="text" name="EMAIL" /> </td>
		</tr>
		<tr>
			<th>Rate:</th>
			<td><input type="number" name="RATE" /> </td>
		</tr>
		<tr>
			<th>Start Date:</th>
			<td><input type="date" name="START_DATE" /> </td>
		</tr>
		<tr>
			<th>Status:</th>
			<td><input type="text" name="STATUS" /> </td>
		</tr>

		</table>
		<input type="submit" value="Add TUTOR" />
		
		</form>
		<h3> <a href="tutor.php"> Return to Main Menu</a></h3>
	</body>
</html>