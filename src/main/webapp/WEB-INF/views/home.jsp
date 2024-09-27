<%@ taglib prefix="ab" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Home - SkillNest</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<!-- Custom CSS for the theme -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/style3.css">

</head>
<body>
<section>

	<ab:forEach var="i" begin="1" end="260">
		<span class="sp"></span>
	</ab:forEach>

	<!-- Navbar -->
			<nav class="navbar navbar-expand-lg">
				<a class="navbar-brand" href="/">SkillNest</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
						aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item">
							<a class="nav-link" href="/login">Login</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="/signup">Sign Up</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="/viewalljobs">Jobs</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="/addjob">Add Job</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="/internships">Internships</a>
						</li>
					</ul>
				</div>
			</nav>
</section>
	<!-- Content -->
<section id="abc">
	<div class="container mt-5">
		<div class="row">
			<ab:forEach var="job" items="${jobPosts}">
				<div class="col-md-4 col-sm-6 mb-4"> <!-- Changed grid columns for responsiveness -->
					<div class="card">
						<div class="card-body">
							<h3 class="card-title">${job.postProfile}</h3>
							<p class="card-text">${job.postId}</p>
							<p class="card-text">${job.postDesc}</p>
							<p class="card-text">${job.reqExperience}</p>
							<a href="apply" class="btn btn-primary">Apply Now</a>
						</div>
					</div>
				</div>
			</ab:forEach>
		</div>
	</div>
</section>
<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
