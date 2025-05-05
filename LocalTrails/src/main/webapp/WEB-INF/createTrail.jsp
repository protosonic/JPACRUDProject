<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Trail</title>
</head>
<body class="bg-light">
	<!-- NAVBAR -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
		<div class="container">
			<a class="navbar-brand" href="home">LocalTrails</a>
			<div>
				<a class="btn btn-outline-light me-2" href="createTrail">Add New Trail</a>
				<a class="btn btn-outline-light me-2" href="home">Home</a>
				<a class="btn btn-outline-light" href="showAllTrails">All Trails</a>
			</div>
		</div>
	</nav>
	<!-- FROM CONTAINER -->
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow-sm">
                    <div class="card-body">
                        <h2 class="card-title text-center mb-4">Add a New Trail</h2>

                        <form action="createTrail" method="POST">
                            <div class="mb-3">
                                <label for="name" class="form-label">Trail Name</label>
                                <input type="text" class="form-control" id="name" name="name" required>
                            </div>

                            <div class="mb-3">
                                <label for="lengthMiles" class="form-label">Distance (miles)</label>
                                <input type="number" step="0.01" class="form-control" id="lengthMiles" name="lengthMiles" required>
                            </div>

                            <div class="mb-3">
                                <label for="difficulty" class="form-label">Difficulty</label>
                                <input type="text" class="form-control" id="difficulty" name="difficulty" required>
                            </div>

                            <div class="mb-3">
                                <label for="singleTrackPercent" class="form-label">Single Track %</label>
                                <input type="number" class="form-control" id="singleTrackPercent" name="singleTrackPercent" required>
                            </div>

                            <div class="mb-3">
                                <label for="altitudeHigh" class="form-label">Highest Altitude</label>
                                <input type="number" class="form-control" id="altitudeHigh" name="altitudeHigh" required>
                            </div>

                            <div class="mb-3">
                                <label for="altitudeLow" class="form-label">Lowest Altitude</label>
                                <input type="number" class="form-control" id="altitudeLow" name="altitudeLow" required>
                            </div>

                            <div class="d-grid">
                                <input type="submit" class="btn btn-success" value="Create Trail">
                            </div>
                        </form>

                        <div class="mt-3 text-center">
                            <a href="home" class="btn btn-link">← Back to Home</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
