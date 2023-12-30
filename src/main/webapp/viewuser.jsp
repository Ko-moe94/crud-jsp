<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="dao.UserDao,bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Users</title>
</head>
<body>
	<%
		List<User> alluser=UserDao.getAllRecords();
		request.setAttribute("list",alluser); 
	%>
	<form align="center">
		<h1>User Lists</h1>
		<table border="1" align="center">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Password</th>
				<th>Email</th>
				<th>Sex</th>
				<th>Country</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach items="${list}" var="u">
				<tr>
					<td>${u.getId()}</td>
					<td>${u.getName()}</td>
					<td>${u.getPassword()}</td>
					<td>${u.getEmail()}</td>
					<td>${u.getSex()}</td>
					<td>${u.getCountry()}</td>
					<td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>  
					<td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>	
		<br/><a href="userform.jsp">Add New User</a> 
	</form>
	 
</body>
</html>