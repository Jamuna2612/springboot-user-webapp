
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 ansitional//EN" "http://www.w3.org//html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset=ISO-8859-1">
<title>ContactInfo Page</title>
<link rel="stylesheet" type="text/css" href="css/assign.css"/>
<style>
		.error {color:red}
	</style>
</head>
<body>
	<center>
		<h1>Contact Info Page</h1>
	</center>
	
	<form:form method="post" modelAttribute="userinfo"
		action="/bankInfo.do">
		<form:hidden path="userid" />
         <form:hidden path="firstname" />
		<form:hidden path="lastname" />
		<form:hidden path="middlename" />
		<form:hidden path="dob" />
		<form:hidden path="email" />
		<form:hidden path="password" />
		<form:hidden path="repassword" />
		<form:hidden path="gender" />
		<form:hidden path="bankname" />
		<form:hidden path="account" />
		<form:hidden path="ssn" />
		
		Address: <form:input path="address" />
		<br>
		<br>  
        City: <form:input path="city" />
		<br>
		<br>
		State: <form:input path="state" />
		<br>
		<br>
		Country: <form:input path="country" />
		<br>
		<br>
		ZipCode: <form:input path="zipcode" />
		<br>
		<br>
		Mobile: <form:input path="mobile" />
		<form:errors path="mobile" cssClass="error" />
		<br>
		<br>
		<input type="submit" value="Submit" />
	</form:form>

</body>
</html>