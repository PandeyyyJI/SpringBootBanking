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
<title>eKyc</title>

<style type="text/css">

body {
	background-color: #EFEFEF;
}

h1 {
	display: block;
	font-family: 'Roboto';
	font-weight: 300;
	font-size: 38px;
	padding: 2rem 0rem 1rem 0rem;
	color: black;
}

.padded {
	padding: 0px 10px 0px 10px;
}

.white{
	background-color: white;
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

button {
	padding: 10px;
	margin: 10px;
	
}

</style>

</head>
<body>
	<ul class="nav nav-tabs padded white">
		<li class="nav-item"><a class="nav-link active"
			aria-current="page" href="/">HOME</a></li>

		<li class="nav-item"><a class="nav-link" href="/register">Register</a>
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
		<div class="card padded" style="width: 100%; padding-left: 4rem;">
		<div class="card-body"> 
		<h1 class="card-title">Please Enter Your eKYC Number</h1>
		<form:form action="getTotalBalance" method="post" modelAttribute="Kyc">
			<form:label path="kycNo">Enter eKYC Number:</form:label>
			<form:input path="kycNo" />
			<br />
			<form:button>Submit</form:button>
		</form:form>
		</div>
		</div>
	</div>
</body>
</html>