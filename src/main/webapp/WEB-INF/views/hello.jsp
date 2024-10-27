<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Application Details</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>
<section>
    <h3>Submitted Application Details</h3>

    <ul>
        <li>Job ID: ${jobId}</li>
        <li>Full Name: ${fullName}</li>
        <li>Contact Number: ${contact}</li>
        <li>Email Address: ${email}</li>
        <li>Work Experience: ${experience} years</li>
        <li>Resume File: ${resumeFileName}</li>
    </ul>

    <a href="/">Go Back</a>
</section>
</body>
</html>
