<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh; /* Full height for the viewport */
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: #00DBDE; /* Fallback color */
            background-image: linear-gradient(90deg, #00DBDE 0%, #FC00FF 100%); /* Gradient */
        }
        h3 {
            text-align: center;
            margin-bottom: 20px;
            color: white;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Add shadow for contrast */
        }
        .form-container {
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2); /* Shadow for the container */
            max-width: 400px;
            width: 90%;
        }
        table {
            width: 100%;
            margin-top: 10px;
        }
        td {
            padding: 10px 0; /* Add vertical padding */
        }
        input[type="email"], input[type="password"] {
            width: 100%; /* Full width */
            padding: 10px; /* Add padding */
            border: 1px solid #ccc; /* Border */
            border-radius: 5px; /* Rounded corners */
            box-sizing: border-box; /* Include padding in the element's total width */
        }
        .btn-grad {
            margin: 10px;
            padding: 15px 45px;
            text-align: center;
            text-transform: uppercase;
            transition: 0.5s;
            background-size: 200% auto;
            color: white;            
            box-shadow: 0 0 20px #eee;
            border-radius: 10px;
            display: inline-block;
            border: none;
            font-size: 16px;
            cursor: pointer;
        }
        .btn-login {
            background-image: linear-gradient(to right, #fc00ff 0%, #00dbde 51%, #fc00ff 100%);
        }
        .btn-login:hover {
            background-position: right center; /* Change the direction of the gradient */
            color: #fff;
            text-decoration: none;
        }
        .btn-clear {
            background-image: linear-gradient(to right, #304352 0%, #d7d2cc 51%, #304352 100%);
        }
        .btn-clear:hover {
            background-position: right center; /* Change the direction of the gradient */
            color: #fff;
            text-decoration: none;
        }
        label {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>
    <div class="form-container">
        <h3><u>Student Login</u></h3>
        <form method="post" action="checkStudentlogin">
            <table>
                <tr>
                    <td><label for="eemail">Enter Email ID</label></td>
                    <td><input type="email" id="semail" name="semail" required/></td>
                </tr>
                <tr>
                    <td><label for="epwd">Enter Password</label></td>
                    <td><input type="password" id="spwd" name="spwd" required/></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <button type="submit" class="btn-grad btn-login">Login</button>
                        <button type="reset" class="btn-grad btn-clear">Clear</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
