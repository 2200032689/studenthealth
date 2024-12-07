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
    <title>Student Profile</title>
     <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        h3 {
            text-align: center;
            color: #343a40;
            margin-top: 0;
        }
        .profile-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
            max-width: 500px;
            width: 100%;
            margin: 20px auto;
        }
        .profile-info {
            background-color: #e9ecef;
            padding: 20px;
            border-radius: 10px;
            border: 1px solid #ced4da;
            font-size: 22px; /* Increased font size */
            color: #495057;
            line-height: 1.8;
            margin-top: 25px;
        }
        .label {
            font-weight: bold;
            color: #007bff;
        }
    </style>
</head>
<body>

    <%@ include file="studentnavbar.jsp" %>
    
    <h3>My Profile</h3>
    <div class="profile-info">
        <span class="label">ID:</span> <%= s.getId() %><br>
        <span class="label">Name:</span> <%= s.getName() %><br>
        <span class="label">Gender:</span> <%= s.getGender() %><br>
        <span class="label">Date Of Birth:</span> <%= s.getDateofbirth() %><br>
        
        <span class="label">Location:</span> <%= s.getLocation() %><br>
        <span class="label">Email:</span> <%= s.getEmail() %><br>
        <span class="label">Password:</span> *****<br>
        <span class="label">Contact:</span> <%= s.getContact() %><br>
    </div>

</body>
</html>
