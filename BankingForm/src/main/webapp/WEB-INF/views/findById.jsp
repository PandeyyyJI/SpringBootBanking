<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.ofss.Customer"%>
<%@page import="java.util.List"%>

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
	
<style type="text/css">
body {
	background-color: #EFEFEF;
}

h1 {
	display: block;
	font-family: 'Roboto';
	font-weight: 400;
	font-size: 41px;
	padding: 1.5rem 0rem 2rem 0rem;
	color: black;
}

.padded {
	padding: 0px 10px 0px 10px;
}

.white{
	background-color: white;
}

</style>
	
<title>Customer Found</title>
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
	<h1 style="padding-left:2rem;">CITY BANK</h1>
	<br>
	<div class="card padded" style="width: 35rem; padding-left: 4rem;">
		<div class="card-body">
			<p class="card-text">
				<%
					Customer c = (Customer) request.getAttribute("find");

					out.println("Customer Name: " + c.getCustomerName() + "<br>");
					out.println("Permanent Address: " + c.getPermanentAddress() + "<br>");
					out.println("Current Address : " + c.getCurrentAddress() + "<br>");
					out.println("Aadhar Number : " + c.getAadharNo() + "<br>");
					out.println("Phone Number : " + c.getContactDetails() + "<br>");
					out.println("Email : " + c.getEmailId() + "<br>");
					out.println("Occupation : " + c.getOccupation() + "<br>");
					out.println("Passport Number: " + c.getPassportNo() + "<br>");
					out.println("Pan Card Number : " + c.getPanCardNo() + "<br>");
					out.println("Kyc Number : " + c.getEkyc() + "<br> <br>");
				%>
			</p>
		</div>
	</div>

</body>
</html>