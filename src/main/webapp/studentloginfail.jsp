<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Student Login Fail</title>
</head>
<body>
<%@include file="mainnavbar.jsp" %>
<c:out value="${message}"></c:out>
<br><br>
<a href="studentlogin">Try Again</a>
</body>
</html>