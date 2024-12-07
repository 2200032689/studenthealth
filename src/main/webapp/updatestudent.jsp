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
    <title>Update Student</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .form-container {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: auto;
        }
        table {
            width: 100%;
            margin-top: 10px;
        }
        td {
            padding: 10px 0; /* Add vertical padding for better spacing */
        }
        input[type="text"], input[type="email"], input[type="password"], input[type="date"], input[type="tel"], select {
            width: 100%; /* Make inputs take full width */
            padding: 10px; /* Add padding for better appearance */
            border: 1px solid #ccc; /* Add border for better visibility */
            border-radius: 5px; /* Match the input fields with the container */
            box-sizing: border-box; /* Include padding in the element's total width */
        }
        input[type="submit"], input[type="reset"] {
            padding: 10px 15px;
            border: none;
            background-color: #5cb85c;
            color: white;
            cursor: pointer;
            border-radius: 5px;
        }
        input[type="reset"] {
            background-color: #d9534f;
        }
        input[type="submit"]:hover, input[type="reset"]:hover {
            opacity: 0.9;
        }
    </style>
</head>
<body>
    <%@ include file="studentnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Update Student</u></h3>
    <div class="form-container">
        <form method="post" action="insertstudent">
            <table>
                 <tr>
                    <td><label for="sid">Enter ID</label></td>
                    <td><input type="number" id="sid" name="sid" value = <%=s.getId() %> readonly required/></td>
                </tr>
                <tr>
                    <td><label for="sname">Enter Name</label></td>
                    <td><input type="text" id="sname" name="sname" value="<%=s.getName()%>" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="sgender" value="MALE" required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="sgender" value="FEMALE" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="sgender" value="OTHERS" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="sdob">Enter Date of Birth</label></td>
                    <td><input type="date" id="sdob" name="sdob" value="<%=s.getDateofbirth()%>" required/></td>
                </tr>
                
                <tr>
                    <td><label for="slocation">Enter Location</label></td>
                    <td><input type="text" id="slocation" name="slocation" value="<%=s.getLocation()%>" required/></td>
                </tr>
                <tr>
                    <td><label for="semail">Enter Email ID</label></td>
                    <td><input type="email" id="semail" name="semail" value="<%=s.getEmail()%>" required/></td>
                </tr>
                <tr>
                    <td><label for="spwd">Enter Password</label></td>
                    <td><input type="password" id="spwd" name="spwd" value="<%=s.getPassword()%>" required/></td>
                </tr>
                <tr>
                    <td><label for="scontact">Enter Contact</label></td>
                    <td><input type="tel" id="scontact" name="scontact" value="<%=s.getContact() %>" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>

