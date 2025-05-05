<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Trail</title>
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

    <!-- GORM CONTAINER -->
    <div class="container">
        <div class="card shadow-sm">
            <div class="card-body">
                <h2 class="card-title text-center mb-4">Update Trail</h2>
                <form action="updateTrail" method="post">
                    <input type="hidden" name="trailId" value="${trail.id}" />

                    <div class="mb-3">
                        <label for="name" class="form-label">Trail Name</label>
                        <input type="text" class="form-control" name="name" value="${trail.name}" required />
                    </div>

                    <div class="mb-3">
                        <label for="lengthMiles" class="form-label">Distance (miles)</label>
                        <input type="text" class="form-control" name="lengthMiles" value="${trail.lengthMiles}" required />
                    </div>

                    <div class="mb-3">
                        <label for="difficulty" class="form-label">Difficulty</label>
                        <input type="text" class="form-control" name="difficulty" value="${trail.difficulty}" required />
                    </div>

                    <div class="mb-3">
                        <label for="singleTrackPercent" class="form-label">Single Track %</label>
                        <input type="text" class="form-control" name="singleTrackPercent" value="${trail.singleTrackPercent}" required />
                    </div>

                    <div class="mb-3">
                        <label for="altitudeHigh" class="form-label">Highest Altitude</label>
                        <input type="text" class="form-control" name="altitudeHigh" value="${trail.altitudeHigh}" required />
                    </div>

                    <div class="mb-3">
                        <label for="altitudeLow" class="form-label">Lowest Altitude</label>
                        <input type="text" class="form-control" name="altitudeLow" value="${trail.altitudeLow}" required />
                    </div>

                    <div class="text-center">
                        <button type="submit" class="btn btn-success">Update Trail</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>
</html>
