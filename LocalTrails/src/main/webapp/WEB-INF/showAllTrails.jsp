<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Local Trails - All Trails</title>
	<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light" style="background: linear-gradient(to bottom, #2e8b57, #87ceeb);">

	<!-- NAVBAR -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
		<div class="container">
			<a class="navbar-brand" href="home">Local Trails</a>
			<div>
				<a class="btn btn-outline-light me-2" href="home">Home</a>
				<a class="btn btn-outline-light me-2" href="createTrail">Add New Trail</a>
				<a class="btn btn-outline-light" href="showAllTrails">All Trails</a>
			</div>
		</div>
	</nav>
	<!-- FORM CONTAINER -->
	<div class="container">
		<div class="card shadow-sm">
			<div class="card-body">
				<h2 class="card-title text-center mb-4">All Trails</h2>

				<c:if test="${not empty trailList}">
					<div class="table-responsive">
						<table class="table table-striped table-bordered align-middle">
							<thead class="table-dark text-center">
								<tr>
									<th>Name</th>
									<th>Distance (miles)</th>
									<th>Difficulty</th>
									<th>Single Track %</th>
									<th>Highest Altitude</th>
									<th>Lowest Altitude</th>
									<th>Average Grade</th>
									<th>Max Grade</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="trail" items="${trailList}">
									<tr>
										<td>${trail.name}</td>
										<td>${trail.lengthMiles}</td>
										<td>${trail.difficulty}</td>
										<td>${trail.singleTrackPercent}%</td>
										<td>${trail.altitudeHigh}</td>
										<td>${trail.altitudeLow}</td>
										<td>${trail.avgGrade}%</td>
										<td>${trail.maxGrade}%</td>
										<td class="text-center">
											<a class="btn btn-sm btn-outline-primary me-1" href="updateForm?trailId=${trail.id}">Edit</a>
											<a class="btn btn-sm btn-outline-danger" href="deleteTrail?trailId=${trail.id}">Delete</a>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</c:if>

				<c:if test="${empty trailList}">
					<div class="alert alert-warning text-center" role="alert">
						No trails available. <a href="createTrail" class="alert-link">Add one here!</a>
					</div>
				</c:if>

			</div>
		</div>
	</div>

</body>
</html>
