<%
	session.removeAttribute("user");
	session.invalidate();
	System.out.println("logged out!!");
	response.sendRedirect("login.jsp");
%>