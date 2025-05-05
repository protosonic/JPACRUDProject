<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Local Trails - Home</title>
	<!-- Bootstrap CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light" style="background: linear-gradient(to bottom, #2e8b57, #87ceeb);">

	<!-- NAVBAR -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Local Trails</a>
			<div class="collapse navbar-collapse">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item">
						<a class="nav-link active" href="home">Home</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="showAllTrails">All Trails</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="createTrail">Add Trail</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- MAIN CONTENT -->
	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card shadow-sm">
					<div class="card-body text-center">
						<h1 class="card-title mb-3">Welcome to Local Trails</h1>
						<p class="card-text fs-5">Your personal guide to managing and discovering local trail adventures. Keep track of your favorite paths and explore new ones.</p>
						<div class="mt-4">
							<a href="showAllTrails" class="btn btn-primary me-2">View Trails</a>
							<a href="createTrail" class="btn btn-success">Add New Trail</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
