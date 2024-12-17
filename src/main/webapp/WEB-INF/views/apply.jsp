<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="ab" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Apply - SkillNest</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">

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
                    <a class="nav-link" href="/viewalljobs">Apply</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/addjob">Hire</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/account">Account</a>
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
    <form:form action="applied" method="post" modelAttribute="Application">
        <h3 style="font-family: 'Calibri Dark',serif"> Fill The Required Details </h3>

        <!-- Hidden field for job ID -->
        <input type="hidden" name="jobId" value="${jobPost.postId}" />

        <!-- Full Name -->
        <div class="mb-3">
            <label for="fullName" class="form-label">Full Name</label>
            <input type="text" class="form-control" id="fullName" name="fullName" required>
        </div>

        <!-- Contact Number -->
        <div class="mb-3">
            <label for="phone" class="form-label">Contact Number</label>
            <input type="text" class="form-control" id="phone" name="phone" required>
        </div>

        <!-- Email Address -->
        <div class="mb-3">
            <label for="email" class="form-label">Email Address</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>

        <!-- Work Experience -->
        <div class="mb-3">
            <label for="experience" class="form-label">Work Experience</label>
            <input type="number" class="form-control" id="experience" name="experience" required>
        </div>

        <!-- Resume Upload -->
        <div class="mb-3">
            <label for="resumeFileName" class="form-label">Upload Resume</label>
            <input type="file" class="form-control" id="resumeFileName" name="resumeFileName" accept=".pdf,.doc,.docx" required>
        </div>

        <!-- Submit Button -->
        <div class="mb-2">
            <label for="skills" class="form-label">Tech Stack</label>
            <select class="form-control selectpicker" id="skills" name="skills" multiple data-live-search="true" required>
                <option value="Java">Java</option>
                <option value="JavaScript">JavaScript</option>
                <option value="Swift">Swift</option>
                <option value="TypeScript">TypeScript</option>
                <option value="Go">Go</option>
                <option value="Kotlin">Kotlin</option>
                <option value="Rust">Rust</option>
                <option value="PHP">PHP</option>
                <option value="HTML5">HTML5</option>
                <option value="CSS3">CSS3</option>
                <option value="GraphQL">GraphQL</option>
                <option value="Raspberry Pi">Raspberry Pi</option>
                <option value="Arduino">Arduino</option>
                <option value="IoT (Internet of Things)">IoT (Internet
                    of Things)</option>
                <option value="Apache Kafka">Apache Kafka</option>
                <option value="Elasticsearch">Elasticsearch</option>
                <option value="Unity">Unity</option>
                <option value="Game Development">Game Development</option>
                <option value="Vue.js">Vue.js</option>
                <option value="Angular">Angular</option>
                <option value="React Native">React Native</option>
                <option value="Flutter">Flutter</option>
                <option value="Node.js">Node.js</option>
                <option value="Express.js">Express.js</option>
                <option value="Django">Django</option>
                <option value="Flask">Flask</option>
                <option value="Ruby on Rails">Ruby on Rails</option>
                <option value="Laravel">Laravel</option>
                <option value="TensorFlow">TensorFlow</option>
                <option value="PyTorch">PyTorch</option>
                <option value="Kubernetes">Kubernetes</option>
                <option value="Docker">Docker</option>
                <option value="Jenkins">Jenkins</option>
                <option value="AWS (Amazon Web Services)">AWS (Amazon
                    Web Services)</option>
                <option value="Azure">Azure</option>
                <option value="Google Cloud">Google Cloud</option>
                <option value="DevOps">DevOps</option>
                <option value="Blockchain">Blockchain</option>
                <option value="Machine Learning">Machine Learning</option>
                <option value="Artificial Intelligence">Artificial
                    Intelligence</option>
                <option value="Cybersecurity">Cybersecurity</option>
                <option
                        value="CISSP (Certified Information Systems Security Professional)">CISSP
                    (Certified Information Systems Security Professional)</option>
                <option value="CompTIA Security+">CompTIA Security+</option>
                <option value="Certified Ethical Hacker (CEH)">Certified
                    Ethical Hacker (CEH)</option>
                <option value="Scrum">Scrum</option>
                <option value="Agile">Agile</option>
                <option value="Kanban">Kanban</option>
                <option value="GraphQL">GraphQL</option>
                <option value="Vue.js">Vue.js</option>
                <option value="Angular">Angular</option>
                <option value="React Native">React Native</option>
                <option value="Flutter">Flutter</option>
                <option value="Node.js">Node.js</option>
                <option value="Express.js">Express.js</option>
                <option value="Django">Django</option>
                <option value="Flask">Flask</option>
                <option value="Ruby on Rails">Ruby on Rails</option>
                <option value="Laravel">Laravel</option>
                <option value="TensorFlow">TensorFlow</option>
                <option value="PyTorch">PyTorch</option>
                <option value="Kubernetes">Kubernetes</option>
                <option value="Docker">Docker</option>
                <option value="Jenkins">Jenkins</option>
                <option value="AWS (Amazon Web Services)">AWS (Amazon
                    Web Services)</option>
                <option value="Azure">Azure</option>
                <option value="Google Cloud">Google Cloud</option>
                <option value="DevOps">DevOps</option>
                <option value="Blockchain">Blockchain</option>
                <option value="Machine Learning">Machine Learning</option>
                <option value="Artificial Intelligence">Artificial
                    Intelligence</option>
                <option value="Cybersecurity">Cybersecurity</option>
                <option
                        value="CISSP (Certified Information Systems Security Professional)">CISSP
                    (Certified Information Systems Security Professional)</option>
                <option value="CompTIA Security+">CompTIA Security+</option>
                <option value="Certified Ethical Hacker (CEH)">Certified
                    Ethical Hacker (CEH)</option>
                <option value="Scrum">Scrum</option>
                <option value="Agile">Agile</option>
                <option value="Kanban">Kanban</option>
                <option value="GraphQL">GraphQL</option>
                <option value="Raspberry Pi">Raspberry Pi</option>
                <option value="Arduino">Arduino</option>
                <option value="IoT (Internet of Things)">IoT (Internet
                    of Things)</option>
                <option value="Apache Kafka">Apache Kafka</option>
                <option value="Elasticsearch">Elasticsearch</option>
                <option value="Unity">Unity</option>
                <option value="Game Development">Game Development</option>
                <option value="Swift">Swift</option>
                <option value="TypeScript">TypeScript</option>
                <option value="Go">Go</option>
                <option value="Kotlin">Kotlin</option>
                <option value="Rust">Rust</option>
                <option value="PHP">PHP</option>
                <option value="HTML5">HTML5</option>
                <option value="CSS3">CSS3</option>
                <option value="GraphQL">GraphQL</option>
                <option value="Raspberry Pi">Raspberry Pi</option>
                <option value="Arduino">Arduino</option>
                <option value="IoT (Internet of Things)">IoT (Internet
                    of Things)</option>
                <option value="Apache Kafka">Apache Kafka</option>
                <option value="Elasticsearch">Elasticsearch</option>
                <option value="Unity">Unity</option>
                <option value="Game Development">Game Development</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Apply</button>

    </form:form>
</section>

<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>

<script>
    // Initialize Bootstrap select with search enabled
    $(document).ready(function () {
        $('.selectpicker').selectpicker();
    });
</script>

</body>
</html>