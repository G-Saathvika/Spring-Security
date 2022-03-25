<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
    <title>Home Page</title>
</head>

<body>
    <h2>Home Page </h2>
    <hr>

    <p>Welcome to the Company Home Page!</p>

    <hr>
    <p>
        User : <security:authentication property="principal.username" />
        <br><br>
        Role(s) : <security:authentication property="principal.authorities" />
    </p>


    <security:authorize access="hasRole('MANAGER')">
    <p>
        <a href="/leaders">Leadership Meeting</a>
        (Only for Manager people)
    </p>
    </security:authorize>

    <security:authorize access="hasRole('ADMIN')">
    <p>
        <a href="/systems">IT Systems Meeting</a>
        (Only for Admin people)
    </p>
    </security:authorize>

    <hr>

    <form:form action="/logout" method="POST">
        <input type="submit" value="Logout" />
    </form:form>


</body>
</html>