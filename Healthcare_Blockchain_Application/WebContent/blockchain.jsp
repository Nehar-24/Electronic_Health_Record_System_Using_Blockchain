<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.Dbconn"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Healthcare</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<link href="assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
<link href="assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="">
	<div class="wrapper ">
		<div class="sidebar" data-color="purple" data-background-color="white"
			data-image="assets/img/sidebar-1.jpg">
			<div class="logo">
				<a href="http://www.creative-tim.com"
					class="simple-text logo-normal"> Patient Profile </a>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav">
					<li class="nav-item active  "><a class="nav-link" href="">
							<p>Dashboard</p>
					</a></li>
					<li class="nav-item "><a class="nav-link"
						href="H_ShowPatient.jsp">

							<p>User Profile</p>
					</a></li>

					<li class="nav-item "><a class="nav-link"
						href="Search_Hospital.jsp">

							<p>User Profile Search</p>
					</a></li>


					<li class="nav-item active"><a class="nav-link"
						href="showblockchain.jsp">

							<p>Show Block Chain</p>
					</a></li>
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<% String pname=(String)session.getAttribute("hospitalname"); %>
						Welcome To <a style="color: red;" class="navbar-brand" href="#"><%=pname %></a>
					</div>

					<div class="collapse navbar-collapse justify-content-end">

						<ul class="navbar-nav">
							<li class="nav-item dropdown"><a class="nav-link"
								href="#pablo" id="navbarDropdownProfile" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> <i
									class="material-icons">person</i>
									<p class="d-lg-none d-md-block">Account</p>
							</a>
								<div class="dropdown-menu dropdown-menu-right"
									aria-labelledby="navbarDropdownProfile">
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="index.jsp?logout">Log out</a>
								</div></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- End Navbar -->
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header card-header-primary">
									<h4 class="card-title ">Info Block Chain</h4>

								</div>

								<form action="hospitaldata" method="post">
									<table class="table"
										style="width: 90%; text-align: middle; border: solid 2px; margin: 12px 0 0px 50px;">
										<thead class=" text-primary">
											<tr>
												<th><b>Block ID</b></th>
												<th><b>Transaction Hash</b></th>
											</tr>
										</thead>
										<tbody>
											<%
										ResultSet rs = null;

										PreparedStatement st = null;
										String quer = null;
										
										try {

											Connection con = Dbconn.conn();

											String tranhash=request.getParameter("name");
											quer = "select * from tblmaster where Transcation_Hash='"+tranhash+"'";

											st = con.prepareStatement(quer);
											rs = st.executeQuery();

											while (rs.next()) {
												
									%>
											<tr>
												<td>Block ID</td>
												<td><%=rs.getString("Trans_ID") %></td>

											</tr>
											<tr>
												<td>Transcation_Hash</td>
												<td><%=rs.getString("Transcation_Hash") %></td>
											</tr>
											<tr>
												<td>Doctor Name</td>
												<td><%=rs.getString("FromName") %></td>

											</tr>
											<tr>
												<td>Patient Name</td>
												<td><%=rs.getString("ToName") %></td>
											</tr>
											<tr>
												<td>Nonce</td>
												<td><%=rs.getString("NonceData") %></td>
											</tr>
											<tr>
												<td>Previous Hash</td>
												<td><%=rs.getString("PreViewHash") %></td>
											</tr>
											<tr>
												<td>Disease First</td>
												<td><%=rs.getString("DiseaseFirst") %></td>
											</tr>
											<tr>
												<td>Disease Second</td>
												<td><%=rs.getString("DiseaseSecond") %></td>
											</tr>
											<tr>
												<td>Disease Three</td>
												<td><%=rs.getString("DiseaseThrees") %></td>
											</tr>
											<tr>
												<td>Disease Four</td>
												<td><%=rs.getString("DiseaseFour") %></td>
											</tr>
											<tr>
												<td>Disease Five</td>
												<td><%=rs.getString("DiseaseFive") %></td>
											</tr>
											<tr>
												<td>Disease Six</td>
												<td><%=rs.getString("DiseaseSix") %></td>
											</tr>


											<%
									
											}

										} catch (SQLException e) {

										}
									
									%>

										</tbody>
									</table>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--   Core JS Files   -->
	<script src="assets/js/core/jquery.min.js"></script>
	<script src="assets/js/core/popper.min.js"></script>
	<script src="assets/js/core/bootstrap-material-design.min.js"></script>
	<script src="assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
	<!-- Plugin for the momentJs  -->
	<script src="assets/js/plugins/moment.min.js"></script>
	<!--  Plugin for Sweet Alert -->
	<script src="assets/js/plugins/sweetalert2.js"></script>
	<!-- Forms Validations Plugin -->
	<script src="assets/js/plugins/jquery.validate.min.js"></script>
	<!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
	<script src="assets/js/plugins/jquery.bootstrap-wizard.js"></script>
	<!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
	<script src="assets/js/plugins/bootstrap-selectpicker.js"></script>
	<!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
	<script src="assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
	<!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
	<script src="assets/js/plugins/jquery.dataTables.min.js"></script>
	<!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
	<script src="assets/js/plugins/bootstrap-tagsinput.js"></script>
	<!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
	<script src="assets/js/plugins/jasny-bootstrap.min.js"></script>
	<!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
	<script src="assets/js/plugins/fullcalendar.min.js"></script>
	<!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
	<script src="assets/js/plugins/jquery-jvectormap.js"></script>
	<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
	<script src="assets/js/plugins/nouislider.min.js"></script>
	<!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
	<!-- Library for adding dinamically elements -->
	<script src="assets/js/plugins/arrive.min.js"></script>
	<!--  Google Maps Plugin    -->
	<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
	<!-- Chartist JS -->
	<script src="assets/js/plugins/chartist.min.js"></script>
	<!--  Notifications Plugin    -->
	<script src="assets/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="assets/js/material-dashboard.js?v=2.1.1"
		type="text/javascript"></script>
	<!-- Material Dashboard DEMO methods, don't include it in your project! -->
	<script src="assets/demo/demo.js"></script>
</body>

</html>