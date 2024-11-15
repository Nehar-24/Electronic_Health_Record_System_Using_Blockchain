<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.connection.*"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Dealer Section</title>
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
<%
if(request.getParameter("Done")!=null){
	   out.println("<script>alert('Dealer Login Successfully...');</script>"); 
	}
if(request.getParameter("deliver")!=null){
	   out.println("<script>alert('Product Delivered Successfully...');</script>"); 
	}
%>
<body class="">
	<div class="wrapper ">
		<div class="sidebar" data-color="purple" data-background-color="white"
			data-image="assets/img/sidebar-1.jpg">
			<div class="logo">
				<a href="PatientProfile.jsp" class="simple-text logo-normal">
					Patient Profile </a>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav">
					<li class="nav-item active "><a class="nav-link"
						href="DealerHome.jsp"> <i class="material-icons">dashboard</i>
							<p>Dashboard</p>
					</a></li>
					<li class="nav-item "><a class="nav-link"
						href="DealerProfile.jsp"> <i class="material-icons">person</i>
							<p>User Profile</p>
					</a></li>
					<li class="nav-item "><a class="nav-link"
						href="MedicineDelivery.jsp"> <i class="material-icons">content_paste</i>
							<p>Medicine Delivery</p>
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
						<% String firstname=(String)session.getAttribute("firstname"); %>
						<% String lastname=(String)session.getAttribute("lastname"); %>
						Welcome To <a style="color: red;" class="navbar-brand" href="#"><%=firstname %>&nbsp;<%=lastname %></a>
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
									<a class="dropdown-item" href="Login">Log out</a>
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
									<h4 class="card-title ">Medicine Tracking System</h4>

								</div>
								<%
								Connection con = Dbconn.conn();
								String Email_ID = (String)session.getAttribute("emailid");
								//System.out.println("EmailId= "+Email_ID);
								PreparedStatement pst=con.prepareStatement("SELECT * FROM tblshipproduct where Email_ID='"+Email_ID+"'");
								ResultSet rs=pst.executeQuery();
								if(rs.next())
								{
									String TrackingID = rs.getString("TrackingID");
									
									Connection con1 = Dbconn.conn();
									PreparedStatement pst1=con1.prepareStatement("SELECT * from tbltracking where TrackingID='"+TrackingID+"'");
									ResultSet rs1=pst1.executeQuery();
									if(rs1.next())
									{
								%>
								<!-- <form action="InfoInsurance" method="post"> -->
									<table class="table">
										<thead class=" text-primary">
										<tr>
											<th>TrackingID</th>
											<th>Email_ID</th>
											<th>Total_Product</th>
											<th>Amount</th>
											<th>Delivery Status</th>
											<th>Dealer Name</th>
											<th>Shipment Date</th>
											<th>Shipment Time</th>
											<th>Status</th>
										</tr>
										</thead>
										<tbody>
											<tr>
												<td><%=TrackingID %></td>
												<td><%=rs.getString("Email_ID") %></td>
												<td><%=rs.getString("total_product") %></td>
												<td><%=rs.getString("cost") %></td>
												<td><%=rs.getString("status") %></td>
												<td><%=rs.getString("dealername") %></td>
												<td><%=rs1.getString("cdate") %></td>
												<td><%=rs1.getString("time") %></td>
												<td><%=rs1.getString("status") %></td>
											</tr>
										</tbody>
									</table>
									<%}} %>
								<!-- </form> -->
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
