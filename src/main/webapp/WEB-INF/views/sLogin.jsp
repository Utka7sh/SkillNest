<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="ab" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Get Started</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/loginstyle.css">

</head>
<body>
<section>
    <ab:forEach var="i" begin="1" end="200">
        <span class="sp"></span>
    </ab:forEach>

    <nav class="navbar navbar-expand-lg">
        <a class="navbar-brand" href="/">SkillNest</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">

                <li class="nav-item">
                    <a class="nav-link" href="/home">Home</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="/login">Login</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="/viewalljobs">Jobs</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="/contact">Contact</a>
                </li>
            </ul>
        </div>
    </nav>
</section>
<section class ="abc">
    <h2>Please Log In/Sign Up to continue</h2>
    <div class="container" id="container">
        <div class="form-container sign-up-container">
            <form action="#">
                <h1>Create Account</h1>
                <%--                <div class="social-container">--%>
                <%--                    <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>--%>
                <%--                    <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>--%>
                <%--                    <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>--%>
                <%--                </div>--%>
                <%--                <span>or use your email for registration</span>--%>
                <input type="text" placeholder="Name" />
                <input type="email" placeholder="Email" />
                <input type="password" placeholder="Password" />
                <button>Sign Up</button>
            </form>
        </div>
        <div class="form-container sign-in-container">
            <form action="#">
                <h1>Sign in</h1>
                <%--                <div class="social-container">--%>
                <%--                    <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>--%>
                <%--                    <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>--%>
                <%--                    <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>--%>
                <%--                </div>--%>
                <%--                <span>or use your account</span>--%>
                <input type="email" placeholder="Email" />
                <input type="password" placeholder="Password" />
                <a href="#">Forgot your password?</a>
                <button>Sign In</button>
            </form>
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-left">
                    <h1>Enter Your Details</h1>
                    <p>Enter your personal details and start journey with us</p>
                    <br>
                    <small>Already a member?</small>
                    <button class="ghost" id="signIn">Sign In</button>
                </div>
                <div class="overlay-panel overlay-right">
                    <h1>Welcome Back!</h1>
                    <p>To keep connected with us please login with your personal info</p>
                    <br>
                    <small>New member?</small>
                    <button class="ghost" id="signUp">Sign Up</button>
                </div>
            </div>
        </div>
    </div>

</section>
<script src="${pageContext.request.contextPath}/loginjs.js"></script>
</body>
</html>
