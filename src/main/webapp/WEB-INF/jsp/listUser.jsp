<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Details</title>
</head>
<body>

<center>
			<a href="/entryDeleteUser.do"> Delete </a>&#160;&#183;&#160;
			<a href="/entryModifyUser.do"> Modify </a>&#160;&#183;&#160;
			<a href="/entryViewUser.do"> View </a>&#160;&#183;&#160;
			<a href="/viewAll.do"> ViewAll </a>
			&#160;&#183;&#160; <br> <br>

		</center>

	<h1>User Details</h1>

	<div align="center">
		<table border="1" cellpadding="5">
			<caption>
				<h2>User details</h2>
			</caption>
			<centre>

			<tr>

				<th>firstname</th>
				<th>lastname</th>
				<th>middlename</th>
				<th>gender</th>
				<th>email</th>
				<th>DateofBirth</th>
				<th>address</th>
				<th>city</th>
				<th>bankname</th>
				<th>account</th>
				<th>ssn</th>
				<th>country</th>
				<th>zipcode</th>
				<th>state</th>
			</tr>
			</centre>


			<c:forEach var="user" items="${listuser}">

				<tr>
					<td><c:out value="${user.firstname}"></c:out></td>
					<td><c:out value="${user.lastname}"></c:out></td>
					<td><c:out value="${user.middlename}"></c:out></td>
					<td><c:out value="${user.gender}"></c:out></td>
					<td><c:out value="${user.email}"></c:out></td>
					<td><c:out value="${user.address}"></c:out></td>
					<td><c:out value="${user.city}"></c:out></td>
					<td><c:out value="${user.bankname}"></c:out></td>
					<td><c:out value="${user.account}"></c:out></td>
					<td><c:out value="${user.ssn}"></c:out></td>
					<td><c:out value="${user.dob}"></c:out></td>
					<td><c:out value="${user.zipcode}"></c:out></td>
					<td><c:out value="${user.country}"></c:out></td>
					<td><c:out value="${user.state}"></c:out></td>

				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>



