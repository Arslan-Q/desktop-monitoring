<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
	

<script>
function updateDB() {
		myfun();
	function myfun(){	
		setTimeout(function () {
		  var xhr = new XMLHttpRequest();
		  xhr.open("Get", "${pageContext.request.contextPath}/screenshot", true);
		  xhr.send(null);
		  alert("hii");
	}, 5000);
}
}
</script>

<style type="text/css">
#success_message {
	display: none;
}
</style>
</head>
<body onload="updateDB();">
	<div class="container">
		<h2>WellCome</h2>
		<input type="button" value="take" onclick=""/>
		<!-- Trigger the modal with a button -->
		<a data-toggle="modal" data-target="#myModal">Open Modal</a>

		<!-- Modal -->
		<div id="myModal" class="modal fade" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">
							<b style="text-align:center;">Registration Form</b>
						</h4>
					</div>
						<form class="well form-horizontal" action="#" method="post" id="contact_form">
				
					<div class="modal-body">
				
							<!-- Text input-->

							<div class="form-group">
								<label class="col-md-4 control-label">First Name</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="glyphicon glyphicon-user"></i></span> <input
											name="first_name" placeholder="First Name"
											class="form-control" type="text">
									</div>
								</div>
							</div>

							<!-- Text input-->

							<div class="form-group">
								<label class="col-md-4 control-label">Last Name</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="glyphicon glyphicon-user"></i></span> <input name="last_name"
											placeholder="Last Name" class="form-control" type="text">
									</div>
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-4 control-label">Manager Id</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="glyphicon glyphicon-user"></i></span> <input name="last_name"
											placeholder="Last Name" class="form-control" type="text">
									</div>

								</div>
							</div>

							<!-- Text input-->

							<div class="form-group">
								<label class="col-md-4 control-label">Username</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="glyphicon glyphicon-user"></i></span> <input name="user_name"
											placeholder="Username" class="form-control" type="text">
									</div>
								</div>
							</div>

							<!-- Text input-->

							<div class="form-group">
								<label class="col-md-4 control-label">Password</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="glyphicon glyphicon-user"></i></span> <input
											name="user_password" placeholder="Password"
											class="form-control" type="password">
									</div>
								</div>
							</div>

							<!-- Text input-->

							<div class="form-group">
								<label class="col-md-4 control-label">Confirm Password</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="glyphicon glyphicon-user"></i></span> <input
											name="confirm_password" placeholder="Confirm Password"
											class="form-control" type="password">
									</div>
								</div>
							</div>

							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label">E-Mail</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="glyphicon glyphicon-envelope"></i></span> <input name="email"
											placeholder="E-Mail Address" class="form-control" type="text">
									</div>
								</div>
							</div>


							<!-- Text input-->

							<div class="form-group">
								<label class="col-md-4 control-label">Contact No.</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="glyphicon glyphicon-earphone"></i></span> <input
											name="contact_no" placeholder="(639)" class="form-control"
											type="text">
									</div>
								</div>
							</div>

							<!-- Select Basic -->

							<!-- Success message -->
							<div class="alert alert-success" role="alert"
								id="success_message">
								Success <i class="glyphicon glyphicon-thumbs-up"></i> Success!.
							</div>
					</div>
					<div class="modal-footer">

							<label class="col-md-4 control-label"></label>
							<div class="col-md-4">
								<br>
								<button type="submit" class="btn btn-warning">
									SUBMIT<span class="glyphicon glyphicon-send"></span>
								</button>
							</div>
						</div>
						</form>
				</div>
				
			</div>
		</div>
	</div>
</body>
</html>