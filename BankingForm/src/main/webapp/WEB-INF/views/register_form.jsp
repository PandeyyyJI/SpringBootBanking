<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
<title>Register</title>

<style type="text/css">
body {
	background-color: #EFEFEF;
}

h1 {
	display: block;
	font-size: 35px;
	font-family: "Roboto";
	font-weight: 500;
	padding-bottom:1rem;
	color: black;
}

label {
	display: inline-block;
	width: 200px;
	margin: 5px;
	text-align: left;
}

input[type=text], input[type=password], select {
	width: 200px;
}


.padded {
	padding: 0px 10px 0px 10px;
}

.white{
	background-color: white;
}


</style>

</head>
<body>
	<ul class="nav nav-tabs padded white">
		<li class="nav-item"><a class="nav-link" aria-current="page"
			href="/">HOME</a></li>

		<li class="nav-item"><a class="nav-link active" href="/register">Register</a>
		</li>

		<li class="nav-item"><a class="nav-link" href="/customers">All
				Customers</a></li>

		<li class="nav-item"><a class="nav-link" href="/accDetails">Get
				Account</a></li>

		<li class="nav-item"><a class="nav-link" href="/getKyc">Verify
				eKyc</a></li>

		<li class="nav-item"><a class="nav-link" href="/getTotalBalance">Total
				Balance</a></li>
	</ul>
	<div align="center">
		<h1>Customer Registration</h1>
		<form:form action="register" method="post" modelAttribute="cust">
			<form:label path="customerName">Full name:</form:label>
			<form:input path="customerName" required="required" />
			<br />

			<form:label path="permanentAddress">Permanent Address:</form:label>
			<form:input path="permanentAddress" required="required"/>
			<br />

			<form:label path="currentAddress">current Address:</form:label>
			<form:input path="currentAddress" required="required"/>
			<br />

			<form:label path="contactDetails">Phone Number:</form:label>
			<form:input path="contactDetails" required="required"/>
			<br />

			<form:label path="emailId">E-mail:</form:label>
			<form:input path="emailId" required="required"/>
			<br />

			<form:label path="occupation">Occupation:</form:label>
			<form:input path="occupation" required="required"/>
			<br />

			<form:label path="birthdate">Birthday (yyyy-mm-dd):</form:label>
			<form:input path="birthdate" required="required"/>
			<br />

			<form:label path="aadharNo">aadharNo:</form:label>
			<form:input path="aadharNo" required="required"/>
			<br />

			<form:label path="panCardNo">panCardNo:</form:label>
			<form:input path="panCardNo" required="required"/>
			<br />

			<form:label path="passportNo">passportNo:</form:label>
			<form:input path="passportNo" required="required"/>
			<br />

			<form:label path="ekyc">ekyc:</form:label>
			<form:input path="ekyc" required="required"/>
			<br />
			<br />
			<form:button class="btn btn-lg btn-light">Register</form:button>
		</form:form>
	</div>

</body>
</html>