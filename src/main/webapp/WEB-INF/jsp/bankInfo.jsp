
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset=ISO-8859-1">
<title>BankInfo Info Page</title>
<link rel="stylesheet" type="text/css" href="css/assign.css"/>
</head>
<body>
	<center>
		<h1>Bank Info Page</h1>
	</center>
	<form:form method="post" modelAttribute="userinfo"
		action="/saveUser.do">
	
			<form:hidden path="userid" />
			<form:hidden path="firstname" />
		<form:hidden path="lastname" />
		<form:hidden path="middlename" />
		<form:hidden path="email" />
		<form:hidden path="password" />
		<form:hidden path="repassword" />
		<form:hidden path="dob" />
		<form:hidden path="gender" />
		<form:hidden path="address" />
		<form:hidden path="city" />
		<form:hidden path="state" />
		<form:hidden path="country" />
		<form:hidden path="mobile" />
		<form:hidden path="zipcode" />
		
		

		Bankname: <form:input path="bankname" />
		<br>
		<br>  
        Account: <form:input path="account" />
		<br>
		<br>
		Ssn: <form:input path="ssn" />
		<br>
		<br>
		<input type="submit" value="Submit" />
	</form:form>


</body>
</html>