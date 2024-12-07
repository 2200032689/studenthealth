<%@ page import="com.klef.jfsd.springboot.model.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
  Student s = (Student) session.getAttribute("student");
  if (s == null) {
    response.sendRedirect("studentsessionfail"); 
    return;
  }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Home</title>
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
        background: #1A2980; /* Fallback for old browsers */
        background: -webkit-linear-gradient(to right, #26D0CE, #1A2980); /* Chrome 10-25, Safari 5.1-6 */
        background: linear-gradient(to right, #26D0CE, #1A2980); /* Modern browsers */
    }

    h1 {
        font-size: 2.8em;
        margin-bottom: 20px;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3); /* Add shadow for better visibility */
    }

    p {
        font-size: 1.2em;
        margin: 0;
        text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.3); /* Add subtle shadow to paragraph */
    }
</style>
</head>
<body>
    <%@ include file="studentnavbar.jsp" %>

    <h1>Welcome <%= s.getName() %></h1>
    <p>Your personal portal for accessing academic resources and updates.</p>
</body>
</html>
