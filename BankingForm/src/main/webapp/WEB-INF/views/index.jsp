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
	backdround: black;
	font-family: 'Open Sans', Helvetica, sans-serif !important;
	-webkit-font-smoothing: antialiased;
}

h1 {
	display: block;
	font-family: 'Roboto';
	font-weight: 500;
	font-size: 54px;
	color: black;
}


.mask {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	box-sizing: border-box;
	padding: 50px 100px 50px 100px;
	background-color: white;
	opacity: 0;
	border-radius: 2px;
}

.center{
	position: absolute;
	top: 45%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.padded {
	padding: 0px 10px 0px 10px;
}
</style>

<title>CITYBANK</title>
</head>
<body>

	<ul class="nav nav-tabs padded ">
		<li class="nav-item"><a class="nav-link link-primary active"
			aria-current="page" href="#">HOME</a></li>

		<li class="nav-item"><a class="nav-link link-primary "
			href="/register">Register</a></li>

		<li class="nav-item"><a class="nav-link link-primary"
			href="/customers">All Customers</a></li>

		<li class="nav-item"><a class="nav-link link-primary"
			href="/accDetails">Get Account</a></li>

		<li class="nav-item"><a class="nav-link link-primary"
			href="/getKyc">Verify eKyc</a></li>

		<li class="nav-item"><a class="nav-link link-primary"
			href="/getTotalBalance">Total Balance</a></li>
	</ul>

	<div style="position: relative; text-align: center;">
		<img style="height: 53rem; padding: 0.5rem 0.75rem 0.25rem 0.75rem"
			src="https://images.unsplash.com/photo-1472803828399-39d4ac53c6e5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=953&q=80"
			width=100%>
		<div class="mask">
			<h1 style="opacity:0.8;">CITY BANK</h1>
		</div>
		<div class="center">
			<h1 style="opacity:0.8; color: white;">CITY BANK</h1>
		</div>
	</div>

</body>
</html>