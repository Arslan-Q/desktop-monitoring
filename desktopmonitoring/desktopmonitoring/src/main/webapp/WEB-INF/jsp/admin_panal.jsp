<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



<!--===============================================================================================-->

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
						<li class=""><a class="js-arrow a"
							href="${pageContext.request.contextPath}/DashBoard"> <i
								class="glyphicon glyphicon-home "></i>Home
						</a>
						<li class=""><a class="js-arrow" href="#"> <i
								class="fas fa-building"></i>Deparments
						</a>
							<ul class="list-unstyled navbar__sub-list js-sub-list">
								<c:forEach var="list" items="${dep_list}">
									<li><a
										href="${pageContext.request.contextPath}/employees_Of_Department?name=${list.deparment_name}">${list.deparment_name}</a></li>
								</c:forEach>
							</ul></li>
						<li><a
							href="${pageContext.request.contextPath}/Record"> <i
								class="fa fa-group"></i>Record
						</a></li>
						<li class=""><a class="js-arrow"
							href="${pageContext.request.contextPath}/addDepartmentProcess">
								<i class="fa fa-building"></i>Add Deparment
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
									placeholder="Search for datas &amp; reports..." />
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
												<a href="${pageContext.request.contextPath}/adminLogOut">
													<i class="zmdi zmdi-power"></i>Logout
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
								<div class="overview-item overview-item--c1">
									<div class="overview__inner">
										<div class="overview-box clearfix">
											<div class="icon">
												<i class="zmdi zmdi-account-o"></i>
											</div>
											<div class="text">
												<h2>${onlinemember}</h2>
												<span>members online</span>
											</div>
										</div>
										<div class="overview-chart">
											<canvas id="widgetChart1"></canvas>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-lg-6">
								<div class="overview-item overview-item--c1">
									<div class="overview__inner">
										<div class="overview-box clearfix">
											<div class="icon">
												<i class="zmdi zmdi-account-o"></i>
											</div>
											<div class="text">
												<h2>${offlinemember}</h2>
												<span>members offline</span>
											</div>
										</div>
										<div class="overview-chart">
											<canvas id="widgetChart1"></canvas>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="container">
							<div class="row">
								<div class="col-9">
									<div class="card">
										<div class="card-body">
											<canvas id="chLine"></canvas>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="container-fluid">
							<div class="col-lg-12">
								<table class="table table-bordered table-hover table-striped"
									style="margin-top: 50px;">
									<b>Today Report</b>
									<tr>
										<th>Name</th>
										<th>Deparment</th>
										<th>Progress</th>
										<th>action</th>
									</tr>
									<c:forEach var="list" items="${employesslist}">
										<tr>
									<td class="m_title"><a href="${pageContext.request.contextPath}/Record?id=${list.id}">${list.firstname}&nbsp${list.firstname}</a></td>
											<td>${list.department}</td>
											<td><c:set var="total" value="${list.work+list.nonwork}" />
												<c:set var="work" value="${list.work/total}" /> <fmt:formatNumber
													var="workper" value="${work*100}" minFractionDigits="0"
													maxFractionDigits="0" /> <c:set var="nonwork"
													value="${list.nonwork/total}" /> <fmt:formatNumber
													var="nonworkper" value="${nonwork*100}"
													minFractionDigits="0" maxFractionDigits="0" />
												<div class="progress">
													<div class="progress-bar progress-bar-success progress-bar-striped active"
														role="progressbar" aria-valuenow="40" aria-valuemin="0"
														aria-valuemax="100" style="width:${workper}%">
														${workper}% work</div>
												</div>
												<div class="progress">
													<div class="progress-bar progress-bar-danger progress-bar-striped active"
														role="progressbar" aria-valuenow="40" aria-valuemin="0"
														aria-valuemax="100" style="width:${nonworkper}%">
														${nonworkper}% Nonwork</div>
												</div></td>
											<td><form action="sendEmail" method="post">
													<input type="hidden" name="email" value="${list.email}"><button
														type="submit" class="btn btn-danger" value="Warn">Warning<span class="glyphicon glyphicon-send"></span></button>
												</form></td>
										</tr>
									</c:forEach>

								</table>
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
	<!-- END MAIN CONTENT-->
	<!-- END PAGE CONTAINER-->


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
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<script>
		/* chart.js chart examples */

		//chart colors
		var colors = [ '#007bff', '#28a745', '#333333', '#c3e6cb', '#dc3545',
				'#6c757d' ];

		var chLine = document.getElementById("chLine");
		/* large line chart */
		var chartData = {
			labels : [ "9am", "10am", "11am", "12pm ", "1am", "2am", "3am",
					"4am", "5am", ],
			datasets : [ {
				data : [ 589, 445, 483, 503, 689, 692, 634 ],
				backgroundColor : 'transparent',
				borderColor : colors[4],
				borderWidth : 4,
				pointBackgroundColor : colors[0]
			}, {
				data : [ 639, 465, 493, 478, 589, 632, 674 ],
				backgroundColor : 'transparent',
				borderColor : colors[1],
				borderWidth : 4,
				pointBackgroundColor : colors[1]
			} ]
		};

		if (chLine) {
			new Chart(chLine, {
				type : 'line',
				data : chartData,
				options : {
					scales : {
						yAxes : [ {
							ticks : {
								beginAtZero : false
							}
						} ]
					},
					legend : {
						display : false
					}
				}
			});
		}
	</script>
</body>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</html>