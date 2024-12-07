<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        height: 100vh; /* Full-screen height */
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        text-align: center;
        color: #fff; /* White text for better contrast with gradient background */
        background: #f857a6; /* Fallback for older browsers */
        background: -webkit-linear-gradient(to right, #ff5858, #f857a6); /* Chrome 10-25, Safari 5.1-6 */
        background: linear-gradient(to right, #ff5858, #f857a6); /* Modern browsers */
    }

    h1 {
        font-size: 2.8em; /* Adjusted size for better balance */
        margin-bottom: 20px; /* Reduced bottom margin */
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3); /* Add shadow for better visibility */
    }

    p {
        font-size: 1.5em; /* Slightly larger font for description */
        margin: 0;
        text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.3); /* Add subtle shadow to paragraph */
    }
</style>
</head>
<body>
    <%@include file="adminnavbar.jsp" %>

    <h1>Welcome to Admin Home</h1>
    <p>Your central hub for managing users, settings, and reports efficiently.</p>
</body>
</html>
