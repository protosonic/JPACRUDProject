<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Trail</title>
</head>
<body>
    <h1>Update Trail</h1>
    
    <form action="updateTrail/${trail.id}" method="post">
        <label for="name">Trail Name:</label>
        <input type="text" name="name" value="${trail.name}" required /><br/>
        
        <label for="lengthMiles">Distance (miles):</label>
        <input type="text" name="lengthMiles" value="${trail.lengthMiles}" required /><br/>
        
        <label for="difficulty">Difficulty:</label>
        <input type="text" name="difficulty" value="${trail.difficulty}" required /><br/>
        
        <label for="singleTrackPercent">Single Track %:</label>
        <input type="text" name="singleTrackPercent" value="${trail.singleTrackPercent}" required /><br/>
        
        <label for="altitudeHigh">Highest Altitude:</label>
        <input type="text" name="altitudeHigh" value="${trail.altitudeHigh}" required /><br/>
        
        <label for="altitudeLow">Lowest Altitude:</label>
        <input type="text" name="altitudeLow" value="${trail.altitudeLow}" required /><br/>
        
        <button type="submit">Update Trail</button>
    </form>
    	<p>
		<a href="createTrail">Add New Trail</a>
		<a href="home">Back to Home</a>
	    <a href="showAllTrails">Back to All Trails</a>
	</p>
</body>
</html>
