<%@ page import="com.service.UserServiceImple"%>
<%@ page import="com.service.UserService"%>
    <jsp:useBean id="usr" class="com.dto.User" scope="page"></jsp:useBean>
    <jsp:setProperty property="*" name="usr"/>
<% 
	UserService usrServ = new UserServiceImple();
	usrServ.registerUser(usr);
	System.out.println(usrServ.registerUser(usr));
	response.sendRedirect("login.jsp");
	
%>