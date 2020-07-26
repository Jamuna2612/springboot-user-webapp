<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

<h1>User registered successfully!</h1>

	<div align="center">
	<table border="1" cellpadding="5">
		<caption>
			<h2>User details</h2>
		</caption>
		<centre><tr>
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



<tr>
	<td>	<c:out value="${userinfo.firstname}"></c:out></td>
	<td>	<c:out value="${userinfo.lastname}"></c:out></td>
	<td>	<c:out value="${userinfo.middlename}"></c:out></td>
	<td>	<c:out value="${userinfo.gender}"></c:out></td>
	<td>	<c:out value="${userinfo.email}"></c:out></td>
	<td>	<c:out value="${userinfo.address}"></c:out></td>
	<td>	<c:out value="${userinfo.city}"></c:out></td>
	<td>	<c:out value="${userinfo.bankname}"></c:out></td>
	<td>	<c:out value="${userinfo.account}"></c:out></td>
	<td>	<c:out value="${userinfo.ssn}"></c:out></td>
	<td>	<c:out value="${userinfo.dob}"></c:out></td>
	<td>	<c:out value="${userinfo.zipcode}"></c:out></td>
	<td>	<c:out value="${userinfo.country}"></c:out></td>
	<td>	<c:out value="${userinfo.state}"></c:out></td>
	
</tr>
</table>
</div>
</body>
</html>



