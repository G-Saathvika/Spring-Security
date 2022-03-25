<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>Home Page</title>
</head>

<body>
    <h2>Home Page </h2>
    <hr>

    <p>Welcome to the Company Home Page!</p>

    <form:form action="/logout" method="POST">
        <input type="submit" value="Logout" />
    </form:form>


</body>
</html>