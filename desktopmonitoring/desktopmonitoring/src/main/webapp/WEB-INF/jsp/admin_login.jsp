<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="admin_login/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="admin_login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="admin_login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="admin_login/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="admin_login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="admin_login/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="admin_login/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="admin_login/vvendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="admin_login/css/util.css">
<link rel="stylesheet" type="text/css" href="admin_login/css/main.css">
<!--===============================================================================================-->
</head>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-85 p-b-20">
				<form class="login100-form validate-form" method="post" action="${pageContext.request.contextPath}/DashBoard">
					<span class="login100-form-title p-b-20"> Welcome </span> <span
						class="login100-form-avatar"> <img
						src="admin_panal/images/icon/avatar-big-01.jpg" alt="AVATAR">
					</span>

					<div class="wrap-input100 validate-input m-t-35 m-b-25"
						data-validate="Enter username">
						<input class="input100" type="text" name="username"> <span
							class="focus-input100" data-placeholder="Username"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-50"
						data-validate="Enter password">
						<input class="input100" type="password" name="pass"> <span
							class="focus-input100" data-placeholder="Password"></span>
					</div>
					<b style="color:red; margin-top:-30px">${msg}</b>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">Login</button>
					</div>
				</form>
			</div>
		</div>
	</div>


	<div id="dropDownSelect1"></div>
	<!--===============================================================================================-->
	<script src="admin_login/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="admin_login/vendor/bootstrap/js/popper.js"></script>
	<!--===============================================================================================-->
	<script src="admin_login/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="admin_login/vendor/daterangepicker/moment.min.js"></script>
	<script src="admin_login/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="admin_login/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="admin_login/js/main.js"></script>

</body>
</html>