<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Health Issue</title>
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
    <%@ include file="mainnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Student Issue</u></h3>
    <div class="form-container">
        <form method="post" action="insertissue">
            <table>
                <tr>
                    <td><label for="susername">Enter Name</label></td>
                    <td><input type="text" id="susername" name="susername" required/></td>
                </tr>
				<tr>
				                 <td><label for="sissue">Enter Issue</label></td>
				                    <td><input type="text" id="sissue" name="sissue" required/></td>
				                </tr>
                <tr>
                    <td><label>Select Priority</label></td>
                    <td>
                        <input type="radio" id="high" name="spriority" value="HIGH" required/>
                        <label for="high">High</label>
                        <input type="radio" id="medium" name="spriority" value="MEDIUM" required/>
                        <label for="medium">Medium</label>
                        <input type="radio" id="low" name="spriority" value="LOW" required/>
                        <label for="low">Low</label>
                    </td>
                </tr>
                
				
				<tr>
				                    <td><label>Select Category</label></td>
				                    <td>
				                        <input type="radio" id="mentalhealth" name="scategory" value="MENTAL HEALTH" required/>
				                        <label for="mentalhealth">Mental Health</label>
				                        <input type="radio" id="academicstress" name="scategory" value="ACADEMIC STRESS" required/>
				                        <label for="medium">Academic Stress</label>
				                        
				                    </td>
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
