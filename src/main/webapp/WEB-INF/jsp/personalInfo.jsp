
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<link rel="stylesheet" type="text/css" href="css/assign.css" />
<style>
.error {
	color: red
}
</style>
<title>Personal Info Page</title>
</head>
<body>

	<center>
		<h1>Personal Info Page</h1>
	</center>
	<form:form method="post" modelAttribute="userinfo"
		action="/user-web/contactInfo.do">

		<center>
			<a href="/entryDeleteUser.do"> Delete </a>&#160;&#183;&#160;
			<a href="/entryModifyUser.do"> Modify </a>&#160;&#183;&#160;
			<a href="/entryViewUser.do"> View </a>&#160;&#183;&#160;
			<a href="/viewAll.do"> ViewAll </a>
			&#160;&#183;&#160; <br> <br>

		</center>
		<form:hidden path="userid" />
		<form:hidden path="address" />
		<form:hidden path="city" />
		<form:hidden path="state" />
		<form:hidden path="country" />
		<form:hidden path="zipcode" />
		<form:hidden path="mobile" />
		<form:hidden path="bankname" />
		<form:hidden path="account" />
		<form:hidden path="ssn" />
		 
        First name: <form:input path="firstname" />
		<form:errors path="firstname" cssClass="error" />
		<br>
		<br>
		Last name: <form:input path="lastname" />
		<br>
		<br>
		Middle name: <form:input path="middlename" />
		<br>
		<br>
		Date of Birth: <form:input path="dob" />
		<form:errors path="dob" cssClass="error" />
		<br>
		<br>
		Email: <form:input path="email" />
		<form:errors path="email" cssClass="error" />
		<br>
		<br>
		Password: <form:input path="password" />
		<br>
		<br>
		RePassword: <form:input path="repassword" />
		<br>
		<br>
		Gender: <form:input path="gender" />
		<br>
		<br>
		<input type="submit" value="Submit" />
	</form:form>


</body>
</html>