<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Trails</title>
</head>
<body>
	<h1>All Trails</h1>
	<c:if test="${not empty trailList}">
		<table border="1">
			<tr>
				<th>Name</th>
				<th>Distance (miles)</th>
				<th>Difficulty</th>
				<th>Single Track %</th>
				<th>Highest Altitude</th>
				<th>Lowest Altitude</th>
			</tr>
			<c:forEach var="trail" items="${trailList}">
				<tr>
					<td>${trail.name}</td>
					<td>${trail.lengthMiles}</td>
					<td>${trail.difficulty}</td>
					<td>${trail.singleTrackPercent}</td>
					<td>${trail.altitudeHigh}</td>
					<td>${trail.altitudeLow}</td>
					<td><a href="updateTrailForm.do?trailId=${trail.id}">Update Trail data</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>

	<c:if test="${empty trailList}">
		<p>No trails available. Add one!</p>
	</c:if>

	<p>
		<a href="createTrail">Add New Trail</a>
		<a href="home">Back to Home</a>
	</p>
</body>
</html>