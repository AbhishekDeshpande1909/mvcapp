<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="validate.jsp" method="post">
		Username:
		<input type="text" name="userName"style="margin-left: 42px">
		<br>
		<br>
		Password:
		<input type="password" name="userPass" style="margin-left: 45px">
		<br>
		<br>
		<input type="submit" value="Login" style="margin-left: 95px">
	</form>
	<%=(request.getParameter("error_msg")!=null)? request.getParameter("error_msg"):"" %>
	<br>
	<a href="login.jsp">Register first!!</a>

</body>
</html>