<%@ taglib prefix="ab" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Home - SkillNest</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<!-- Custom CSS for the theme -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">

</head>
<body>
<section>

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
							<a class="nav-link" href="/viewalljobs">Jobs</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="/sLogin">Apply</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="/hLogin">Hire</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="/contact">Contact</a>
						</li>
					</ul>
				</div>
			</nav>

	<ab:forEach var="i" begin="1" end="200">
		<span class="sp"></span>
	</ab:forEach>

</section>
	<!-- Content -->
<section class="abc mt-6">
	<div class="container">
		<div class="row">
			<ab:forEach var="job" items="${jobPosts}">
				<div class="col-12 mb-3"> <!-- Full-width column -->
					<div class="card" style="width: auto; max-width: 100%;"> <!-- Adjust width based on content -->
						<div class="card-body">
							<h5 class="card-title" style="color: #8b3efd;">${job.postProfile}</h5>

							<p class="card-text"><u style="color: #4a3eea">Job ID:</u> ${job.postId}</p>
							<p class="card-text"><u style="color: #4a3eea">Description:</u> ${job.postDesc}</p>
							<p class="card-text"><u style="color: #4a3eea">Experience Required:</u> ${job.reqExperience}</p>

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
