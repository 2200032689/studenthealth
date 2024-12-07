<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
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
        input[type="text"], input[type="password"] {
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
            background-image: linear-gradient(to right, #fc00ff 0%, #00dbde 51%, #fc00ff 100%); /* Gradient for login button */
        }
        .btn-login:hover {
            background-position: right center; /* Change the direction of the gradient */
            color: #fff;
            text-decoration: none;
        }
        .btn-clear {
            background-image: linear-gradient(to right, #304352 0%, #d7d2cc 51%, #304352 100%); /* Gradient for clear button */
        }
        .btn-clear:hover {
            background-position: right center; /* Change the direction of the gradient */
            color: #fff;
            text-decoration: none;
        }
        .button-container {
            text-align: center; /* Center buttons */
        }
    </style>
</head>
<body>
  <%@include file="mainnavbar.jsp" %>
    <h3><u>Admin Login</u></h3>
    <div class="form-container">
        <form method="post" action="checkadminlogin">
            <table>
                <tr>
                    <td><label for="auname">Enter Username</label></td>
                    <td><input type="text" id="auname" name="auname" required/></td>
                </tr>
                <tr>
                    <td><label for="apwd">Enter Password</label></td>
                    <td><input type="password" id="apwd" name="apwd" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login" class="btn-grad btn-login"/> <!-- Login button with gradient -->
                        <input type="reset" value="Clear" class="btn-grad btn-clear"/> <!-- Clear button with gradient -->
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
