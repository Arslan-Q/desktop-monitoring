<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Title Page-->
<title>Dashboard</title>

<!-- Fontfaces CSS-->
<link href="admin_panal/css/font-face.css" rel="stylesheet" media="all">
<link
	href="admin_panal/vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<link
	href="admin_panal/vendor/font-awesome-5/css/fontawesome-all.min.css"
	rel="stylesheet" media="all">
<link
	href="admin_panal/vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">

<!-- Bootstrap CSS-->
<link href="admin_panal/vendor/bootstrap-4.1/bootstrap.min.css"
	rel="stylesheet" media="all">

<!-- Vendor CSS-->
<link href="admin_panal/vendor/animsition/animsition.min.css"
	rel="stylesheet" media="all">
<link
	href="admin_panal/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet" media="all">
<link href="admin_panal/vendor/wow/animate.css" rel="stylesheet"
	media="all">
<link href="admin_panal/vendor/css-hamburgers/hamburgers.min.css"
	rel="stylesheet" media="all">
<link href="admin_panal/vendor/slick/slick.css" rel="stylesheet"
	media="all">
<link href="admin_panal/vendor/select2/select2.min.css" rel="stylesheet"
	media="all">
<link href="admin_panal/vendor/perfect-scrollbar/perfect-scrollbar.css"
	rel="stylesheet" media="all">

<!-- Main CSS-->
<link href="admin_panal/css/theme.css" rel="stylesheet" media="all" />
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	rel="stylesheet" />
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
<script>
$(document).ready(function(){
	  $("txtname").change(function(){
	    alert("The text has been changed.");
	  });
	});
function checkDepExist(){
	alert("Hello");
 $.ajax({
  type: "GET",
  url: "/checkDepExist",
  cache: false,    
  data:'DepName=' + $("#txtname").val(),
  success: function(response){
   $('#result').html("");
   var obj = JSON.parse(response);
   $('#result').html()
  },
  error: function(){      
   alert('Error while request..');
  }
 });
}
</script>
</head>
<body class="animsition">
	<div class="page-wrapper">


		<!-- MENU SIDEBAR-->
		<aside class="menu-sidebar d-none d-lg-block">
			<div class="logo">
				<a href="#"> <img src="admin_panal/images/icon/logo.png"
					alt="Cool Admin" />
				</a>
			</div>
			<div class="account2">
				<div class="image img-cir img-120">
					<img src="admin_panal/images/icon/avatar-big-01.jpg"
						alt="${admin_name}" />
				</div>
				<h4 class="name">${admin_name}</h4>

			</div>

			<div class="menu-sidebar__content js-scrollbar1">
				<nav class="navbar-sidebar">
					<ul class="list-unstyled navbar__list">
						<li class=""><a class="js-arrow"
							href="${pageContext.request.contextPath}/DashBoard"> <i
								class="glyphicon glyphicon-home"></i>Home
						</a>
						<li class=""><a class="js-arrow" href="#"> <i
								class="fas fa-building"></i>Deparments
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<c:forEach var="list" items="${dep_list}">
									<li><a href="#">${list.deparment_name}</a></li>
								</c:forEach>
							</ul></li>
						<li><a href="#"> <i class="fa fa-group"></i>Employees
						</a></li>
						<li class=""><a class="js-arrow" href="#"> <i
								class="fa fa-building"></i>Add Deparment
						</a>
						<li class=""><a class="js-arrow" href="#"> <i
								class="fa fa-user-plus"></i>Add Employees
						</a>
					</ul>
				</nav>
			</div>
		</aside>
		<!-- END MENU SIDEBAR-->

		<!-- PAGE CONTAINER-->
		<div class="page-container">
			<!-- HEADER DESKTOP-->
			<header class="header-desktop">
				<div class="section__content section__content--p30">
					<div class="container-fluid">
						<div class="header-wrap">
							<form class="form-header" action="" method="POST">
								<input class="au-input au-input--xl" type="text" name="search"
									placeholder="" />
								<button class="au-btn--submit" type="submit">
									<i class="zmdi zmdi-search"></i>
								</button>
							</form>
							<div class="header-button">
								<div class="account-wrap">
									<div class="account-item clearfix js-item-menu">

										<div class="content">
											<a class="js-acc-btn" href="#"></a>
										</div>
										<div class="account-dropdown js-dropdown ">

											<div class="account-dropdown__body">
												<div class="account-dropdown__item ">
													<a href="#"> <i class="zmdi zmdi-account"></i>Account
													</a>
												</div>
												<div class="account-dropdown__item">
													<a href="#"> <i class="zmdi zmdi-settings"></i>Setting
													</a>
												</div>

											</div>
											<div class="account-dropdown__footer">
												<a href="#"> <i class="zmdi zmdi-power"></i>Logout
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
			<!-- HEADER DESKTOP-->

			<!-- MAIN CONTENT-->
			<div class="main-content">
				<div class="section__content section__content--p30">
					<div class="container-fluid">
						<div class="row m-t-25">
							<div class="col-sm-6 col-lg-6">
								<div class="form-group">
								<form method="post" action="${pageContext.request.contextPath}/add_Deparment">
									<label class="col-md-2 control-label">Name</label>
									<div class="col-md-6 inputGroupContainer">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-home"></i></span> <input
												name="deparment_name" placeholder="Department Name" id="txtname"
												class="form-control" type="text"/>											
										</div>
										<p id="result"></p>
										
										<button style="margin-left:45px; margin-top:5px" type="submit"
											class="btn btn-success">
											SUBMIT <span class="glyphicon glyphicon-send" onclick="checkDepExist();"></span>
										</button>
									</div>
											
								</form>
								</div>
								
								
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="copyright">
						<p>Copyright © beginther. All rights reserved.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Jquery JS-->
	<script src="admin_panal/vendor/jquery-3.2.1.min.js"></script>
	<!-- Bootstrap JS-->
	<script src="admin_panal/vendor/bootstrap-4.1/popper.min.js"></script>
	<script src="admin_panal/vendor/bootstrap-4.1/bootstrap.min.js"></script>
	<!-- Vendor JS       -->
	<script src="admin_panal/vendor/slick/slick.min.js">
		
	</script>
	<script src="admin_panal/vendor/wow/wow.min.js"></script>
	<script src="admin_panal/vendor/animsition/animsition.min.js"></script>
	<script
		src="admin_panal/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
		
	</script>
	<script src="admin_panal/vendor/counter-up/jquery.waypoints.min.js"></script>
	<script src="admin_panal/vendor/counter-up/jquery.counterup.min.js">
		
	</script>
	<script src="admin_panal/vendor/circle-progress/circle-progress.min.js"></script>
	<script src="admin_panal/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script src="admin_panal/vendor/chartjs/Chart.bundle.min.js"></script>
	<script src="admin_panal/vendor/select2/select2.min.js">
		
	</script>

	<!-- Main JS-->
	<script src="admin_panal/js/main.js"></script>

</body>
</html>