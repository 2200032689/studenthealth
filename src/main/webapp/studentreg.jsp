<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh; /* Full height for the viewport */
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: #4158D0; /* Fallback for older browsers */
            background-image: linear-gradient(135deg, #4158D0 0%, #C850C0 50%, #FFCC70 100%); /* Adjusted gradient angle and stops */
        }
        h3 {
            text-align: center;
            margin-bottom: 20px;
            color: #fff; /* White text for better contrast */
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Add shadow for better visibility */
        }
        .form-container {
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            max-width: 500px;
            width: 90%; /* Responsive width */
        }
        table {
            width: 100%;
            margin-top: 10px;
        }
        td {
            padding: 10px 0;
        }
        input[type="text"], input[type="email"], input[type="password"], input[type="date"], input[type="tel"], select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"], input[type="reset"] {
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
        }
        input[type="submit"] {
            background-color: #0056b3;
            color: white;
        }
        input[type="reset"] {
            background-color: #d9534f;
            color: white;
        }
        input[type="submit"]:hover, input[type="reset"]:hover {
            opacity: 0.9;
        }
        label {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>
    <div class="form-container">
        <h3><u>Student Registration</u></h3>
        <form method="post" action="insertstudent">
            <table>
                <tr>
                    <td><label for="sname">Enter Name</label></td>
                    <td><input type="text" id="sname" name="sname" required/></td>
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
                    <td><input type="date" id="sdob" name="sdob" required/></td>
                </tr>
                <tr>
                    <td><label for="slocation">Enter Location</label></td>
                    <td><input type="text" id="slocation" name="slocation" required/></td>
                </tr>
                <tr>
                    <td><label for="semail">Enter Email ID</label></td>
                    <td><input type="email" id="semail" name="semail" required/></td>
                </tr>
                <tr>
                    <td><label for="spwd">Enter Password</label></td>
                    <td><input type="password" id="spwd" name="spwd" required/></td>
                </tr>
                <tr>
                    <td><label for="scontact">Enter Contact</label></td>
                    <td><input type="tel" id="scontact" name="scontact" required/></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input type="submit" value="Register"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
