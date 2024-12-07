<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Students</title>
    <style>
        table {
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
            border-collapse: collapse;
            table-layout: auto;
            background-color: #fff;
        }

        table, th, td {
            border: 2px solid black;
        }

        th, td {
            padding: 10px;
            text-align: center;
            word-wrap: break-word;
        }

        th {
            background-color: black;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:nth-child(odd) {
            background-color: #fff;
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>
    <h3 style="text-align: center;"><u>View All Students</u></h3>
    <table>
        <tr>
           
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            
            <th>LOCATION</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
        </tr>
        <c:forEach items="${emplist}" var="student">
            <tr>
               
                <td><c:out value="${student.name}"/></td>
                <td><c:out value="${student.gender}"/></td>
                <td><c:out value="${student.dateofbirth}"/></td>
                
                <td><c:out value="${student.location}"/></td>
                <td><c:out value="${student.email}"/></td>
                <td><c:out value="${student.contact}"/></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
