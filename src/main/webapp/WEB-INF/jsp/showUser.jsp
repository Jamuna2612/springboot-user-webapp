<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<body>

	<center>
		<a href="/entryDeleteUser.do"> Delete </a>&#160;&#183;&#160;
		<a href="/entryModifyUser.do"> Modify </a>&#160;&#183;&#160;
		<a href="/entryViewUser.do"> View </a>&#160;&#183;&#160; <a
			href="/viewAll.do"> ViewAll </a> &#160;&#183;&#160; <br>
		<br>
	</center>

	<centre>
	<h2>User Details</h2>
	</centre>
	
	<table>

		<tr>
			<td>First Name :</td>
			<td>${userinfo.firstname}</td>
		</tr>

		<tr>
			<td>Last Name :</td>
			<td>${userinfo.lastname}</td>
		</tr>


		<tr>
			<td>Middle Name :</td>
			<td>${userinfo.middlename}</td>
		</tr>


		<tr>
			<td>Email :</td>
			<td>${userinfo.email}</td>
		</tr>

		<tr>
			<td>Re password :</td>
			<td>${userinfo.repassword}</td>
		</tr>


		<tr>
			<td>Password :</td>
			<td>${userinfo.password}</td>
		</tr>

		<tr>
			<td>User Id :</td>
			<td>${userinfo.userid}</td>
		</tr>

		<tr>
			<td>Date of Birth :</td>
			<td>${userinfo.dob}</td>
		</tr>


		<tr>
			<td>Gender :</td>
			<td>${userinfo.gender}</td>
		</tr>
		<tr>
			<td>Address :</td>
			<td>${userinfo.address}</td>
		</tr>

		<tr>
			<td>City :</td>
			<td>${userinfo.city}</td>
		</tr>

		<tr>
			<td>State</td>
			<td>${userinfo.state}</td>
		</tr>
		<tr>
			<td>Country</td>
			<td>${userinfo.country}</td>
		</tr>
		<tr>
			<td>Mobile :</td>
			<td>${userinfo.mobile}</td>
		</tr>
		<tr>
			<td>Zip Code :</td>
			<td>${userinfo.zipcode}</td>
		</tr>
		<tr>
			<td>Bank Name :</td>
			<td>${userinfo.bankname}</td>
		</tr>
		<tr>
			<td>Account :</td>
			<td>${userinfo.account}</td>
		</tr>
		<tr>
			<td>SSN :</td>
			<td>${userinfo.ssn}</td>
		</tr>

	</table>

</body>
</html>