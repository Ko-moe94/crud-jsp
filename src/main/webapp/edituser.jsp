<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dao.UserDao" %>
<jsp:useBean id="u" class="bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit User By Id</title>
</head>
<body>
	<%
		int i= UserDao.updateUser(u);
		response.sendRedirect("viewuser.jsp");
	%>
</body>
</html>