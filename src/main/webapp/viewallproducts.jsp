<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Products</title>
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
   
    <h3 style="text-align: center;"><u>View All Students</u></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>Description</th>
            <th>Cost</th>
            
            <th>Image</th>
           
        </tr>
        <c:forEach items="${products}" var="product">
            <tr>
                <td><c:out value="${product.id}"/></td>
                <td><c:out value="${product.name}"/></td>
                <td><c:out value="${product.description}"/></td>
                <td><c:out value="${product.cost}"/></td>
				<td>
					<img src="displayproductimage?id=${product.id}" width="25%" height="25%"/>
				</td>
                
            
            </tr>
        </c:forEach>
    </table>
</body>
</html>
