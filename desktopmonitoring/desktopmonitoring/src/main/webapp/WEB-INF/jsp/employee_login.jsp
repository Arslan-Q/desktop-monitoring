<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"
	type="text/javascript"></script>

<!--===============================================================================================-->
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="employee_login/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="employee_login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="employee_login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="employee_login/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="employee_login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="employee_login/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="employee_login/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="employee_login/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="employee_login/css/util.css">
<link rel="stylesheet" type="text/css"
	href="employee_login/css/main.css">
<!--===============================================================================================-->

<script type="text/javascript">
	function crunchifyAjax() {
		$.ajax({
			type : 'get',
			url : '${pageContext.request.contextPath}/CurrentTime',
			data : {
	        	email:$("#email").val()
	        	},
			success : function(data) {
				$('#result').text(data);
			}
		});
	}
</script>

<script type="text/javascript">
	var intervalId = 0;
	intervalId = setInterval(crunchifyAjax, 6000);
	
</script>
<style type="text/css">
#success_message {
	display: none;
}
</style>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.1.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title"
					style="background-image: url(employee_login/images/bg-01.jpg);">
					<span class="login100-form-title-1"> Sign In </span>
				</div>

				<form class="login100-form validate-form"
					action="${pageContext.request.contextPath}/loginProcess"
					method="post">
					<h1 id="total_items"></h1>
					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Username is required">
						<span class="label-input100">Username</span>

						<input class="input100" type="text" name="username" id=total_items
							placeholder="Enter username"> <span
							class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18"
						data-validate="Password is required">
						<span class="label-input100">Password</span> <input
							class="input100" type="password" name="Password"
							placeholder="Enter password"> <span
							class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn m-t-40 m-l-70 ">
						<button class="login100-form-btn">Login</button>
					</div>

					<div class="flex-sb-m w-full m-t-50">
						<div>
							<a href="#" class="txt12" data-toggle="modal"
								data-target="#myModal"> sign Up </a>
						</div>
						<div>
							<a href="#" class="txt12"> Forgot Password? </a>
						</div>
					</div>


				</form>

			</div>
		</div>
	</div>
	<!-- Modal -->
	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">
						<b>Registration Form</b>
					</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>

				</div>
				<form class="well form-horizontal"
					action="${pageContext.request.contextPath}/signupProcess" method="post"
					id="contact_form">

					<div class="modal-body">

						<!-- Text input-->
						<!-- Text input-->

						<div class="form-group">
							<label class="col-md-4 control-label">Department</label>
							<div class="col-md-5 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-user"></i></span> <select required="required"
										class="form-control" name="department">
										
										<c:forEach var="list" items="${dep_list}">
											<option value='${list.deparment_id}'>${list.deparment_name}</option>
										</c:forEach>

									</select>


								</div>
							</div>
						</div>

						<!-- Text input-->

						<div class="form-group">
							<label class="col-md-4 control-label">First Name</label>
							<div class="col-md-5 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-user"></i></span> <input required="required" name="first_name"
										placeholder="First Name" class="form-control" type="text"
										pattern="[A-Za-z0-9]+">
								</div>
							</div>
						</div>

						<!-- Text input-->

						<div class="form-group">
							<label class="col-md-4 control-label">Last Name</label>
							<div class="col-md-5 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-user"></i></span> <input required="required" name="last_name"
										placeholder="Last Name" class="form-control" type="text"
										pattern="[A-Za-z0-9]+">
								</div>
							</div>
						</div>
						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label">E-Mail</label>
							<div class="col-md-5 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-envelope"></i></span> <input  required="required" name="email"
										placeholder="E-Mail Address" id="email" class="form-control"
										type="text" pattern="[^ @]*@[^ @]*">
										

								</div>
								<div id="result" style="color:red"></div>

							</div>

						</div>


						<!-- Text input-->

						<div class="form-group">
							<label class="col-md-4 control-label">Password</label>
							<div class="col-md-5 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-user"></i></span> <input required="required"
										name="user_password" placeholder="Password"
										class="form-control" type="password" pattern=".{8,}" title="Eight or more characters">
								</div>
							</div>
						</div>

						<!-- Text input-->

						<div class="form-group">
							<label class="col-md-4 control-label">Contact No.</label>
							<div class="col-md-5 inputGroupContainer">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-earphone"></i></span> <input required="required"
										name="contact_no"  class="form-control" pattern="03[0-9]{2}[0-9]{7}"
										type="text">
								</div>
							</div>
						</div>

						<!-- Select Basic -->

						<!-- Success message -->
						<div class="alert alert-success" role="alert" id="success_message">
							Success <i class="glyphicon glyphicon-thumbs-up"></i> Success!.
						</div>
					</div>
					<div class="modal-footer">

						<label class="col-md-4 control-label"></label>
						<div class="col-md-4">
							<br>
							<button  type="submit" class="btn btn-warning">
								SUBMIT<span class="glyphicon glyphicon-send"></span>
							</button>
						</div>
					</div>
				</form>
			</div>

		</div>
	</div>


	<!--===============================================================================================-->
	<script src="employee_login/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="employee_login/vendor/bootstrap/js/popper.js"></script>
	<!--===============================================================================================-->
	<script src="employee_login/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="employee_login/vendor/daterangepicker/moment.min.js"></script>
	<script src="employee_login/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="employee_login/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="employee_login/js/main.js"></script>

</body>
</html>