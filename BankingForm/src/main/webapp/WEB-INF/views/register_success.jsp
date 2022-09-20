<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<title>Registration Success</title>
<style type="text/css">

body {
	background-color: #EFEFEF;
}

span {
	display: inline-block;
	width: 200px;
	text-align: left;
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
		<h2>Registered Successfully!</h2>
		<span>Full name:</span><span>${customer.customerName}</span><br /> <span>Permanent
			Address:</span><span>${customer.permanentAddress}</span><br /> <span>Current
			Address:</span><span>${customer.currentAddress}</span><br /> <span>Phone
			Number:</span><span>${customer.contactDetails}</span><br /> <span>Aadhar
			Number:</span><span>${customer.aadharNo}</span><br /> <span>Birthday:</span><span>${customer.birthdate}</span><br />
		<span>E-mail:</span><span>${customer.emailId}</span><br /> <span>Pan
			Card Number:</span><span>${customer.panCardNo}</span><br /> <span>Occupation:</span><span>${customer.occupation}</span><br />
		<span>Passport Number:</span><span>${customer.passportNo}</span><br />
		<span>eKYC Number:</span><span>${customer.ekyc}</span><br />

	</div>

</body>
</html>