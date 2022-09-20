<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.ofss.CustomerInfi"%>
<%@page import="com.ofss.CustomerHdcc"%>
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
<title>Customer Found</title>

<style type="text/css">
body {
	background-color: #EFEFEF;
}

h1 {
	display: block;
	font-family: 'Roboto';
	font-weight: 500;
	font-size: 41px;
	padding: 1.5rem 0rem 2rem 2rem;
	color: black;
}

h2 {
	display: block;
	font-family: "Roboto";
	font-weight: 300;
	font-size: 20px;
}

.padded {
	padding: 0px 10px 0px 10px;
}

.white {
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
	<h1>CITY BANK</h1>
	<table>
		<tr>
			<td>
				<div class="card padded" style="width: 35rem; padding-left: 4rem;">
					<div class="card-body">
						<h2 class="card-title">INFINITY BANK</h2>
						<p class="card-text">
							<%
								CustomerInfi c = (CustomerInfi) request.getAttribute("find");

								out.println("Customer Name: " + c.getCustomerName() + "<br>");
								out.println("Permanent Address: " + c.getPermanentAddress() + "<br>");
								out.println("Current Address : " + c.getCurrentAddress() + "<br>");
								out.println("Aadhar Number : " + c.getAadharNo() + "<br>");
								out.println("Phone Number : " + c.getContactDetails() + "<br>");
								out.println("Balance : " + c.getBalance() + "<br>");
								out.println("Email : " + c.getEmailId() + "<br>");
								out.println("Occupation : " + c.getOccupation() + "<br>");
								out.println("Passport Number: " + c.getPassportNo() + "<br>");
								out.println("Pan Card Number : " + c.getPanCardNo() + "<br>");
								out.println("Kyc Number : " + c.getEkyc() + "<br> <br>");
							%>
						</p>
					</div>
				</div>

			</td>



			<td>

				<div class="card padded" style="width: 35rem; padding-left: 4rem;">
					<div class="card-body">
						<h2 class="card-title">HDCC BANK</h2>
						<p class="card-text">
							<%
								CustomerHdcc custHdcc = (CustomerHdcc) request.getAttribute("findHdcc");

								out.println("Customer Name: " + custHdcc.getCustomerName() + "<br>");
								out.println("Permanent Address: " + custHdcc.getPermanentAddress() + "<br>");
								out.println("Current Address : " + custHdcc.getCurrentAddress() + "<br>");
								out.println("Aadhar Number : " + custHdcc.getAadharNo() + "<br>");
								out.println("Phone Number : " + custHdcc.getContactDetails() + "<br>");
								out.println("Balance : " + custHdcc.getBalance() + "<br>");
								out.println("Email : " + custHdcc.getEmailId() + "<br>");
								out.println("Occupation : " + custHdcc.getOccupation() + "<br>");
								out.println("Passport Number: " + custHdcc.getPassportNo() + "<br>");
								out.println("Pan Card Number : " + custHdcc.getPanCardNo() + "<br>");
								out.println("Kyc Number : " + custHdcc.getEkyc() + "<br> <br>");
							%>
						</p>
					</div>
				</div>

			</td>
		</tr>

	</table>

</body>
</html>