<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
	<title>Custom Login Page</title>
	<style>
	.error{
	color:red;
	}
	</style>
</head>

<body>

<h3>My Custom Login Page</h3>

	<form:form action="/authenticateTheUser" method="POST">

		<c:if test="${param.error!=null}">
            <p style="color: red"> Sorry! You entered invalid username/password. </p>
        </c:if>

		<p>
			User name: <input type="text" name="username" />
		</p>

		<p>
			Password: <input type="password" name="password" />
		</p>

		<input type="submit" value="Login" />

	</form:form>

</body>

</html>