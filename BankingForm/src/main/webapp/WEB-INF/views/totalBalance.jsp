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
<title>CITYBANK</title>
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
	<h1 style="padding-left: 2rem;">CITY BANK</h1>
	<h2 style="padding-left: 2rem;"> The aggregated balance in all the accounts is : Rs. 
	<%
	Long totalBalance = (Long) request.getAttribute("totalBalance");
	out.println(totalBalance);
    %>
    </h2>

</body>
</html>