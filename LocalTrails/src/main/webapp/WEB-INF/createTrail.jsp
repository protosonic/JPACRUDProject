<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Trail</title>
</head>
<body>
    <h1>Add a New Trail</h1>

    <form action="createTrail" method="POST">
		<label for="name">Trail Name:</label>
		<input type="text" id="name" name="name" required><br><br>
		
		<label for="lengthMiles">Distance (miles):</label>
		<input type="number" step="0.01" id="lengthMiles" name="lengthMiles" required><br><br>

		<label for="difficulty">Difficulty:</label>
		<input type="text" id="difficulty" name="difficulty" required><br><br>

		<label for="singleTrackPercent">Single Track %:</label>
		<input type="number" id="singleTrackPercent" name="singleTrackPercent" required><br><br>

		<label for="altitudeHigh">Highest Altitude:</label>
		<input type="number" id="altitudeHigh" name="altitudeHigh" required><br><br>

		<label for="altitudeLow">Lowest Altitude:</label>
		<input type="number" id="altitudeLow" name="altitudeLow" required><br><br>

		<input type="submit" value="Create Trail">
    </form>

    <p><a href="home">Back to Home</a></p>
</body>
</html>
