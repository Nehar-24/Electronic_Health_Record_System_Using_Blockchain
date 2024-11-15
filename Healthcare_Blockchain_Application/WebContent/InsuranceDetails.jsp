<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>Healthcare </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white" data-image="assets/img/sidebar-1.jpg">
      <div class="logo">
        <a href="http://www.creative-tim.com" class="simple-text logo-normal">
          Insurance Details
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item  ">
            <a class="nav-link" href="InsuranceProfile.jsp">
              <i class="material-icons">dashboard</i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="nav-item active ">
            <a class="nav-link" href="InsuranceDetails.jsp">
              <i class="material-icons">person</i>
              <p>Insurance Details</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="UserHistoryInsurance.jsp">
              <i class="material-icons">person</i>
              <p>User History Insurance </p>
            </a>
          </li>
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="#pablo">Insurance Details</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">
            
            <ul class="navbar-nav">
                         
              <li class="nav-item dropdown">
                <a class="nav-link" href="#pablo" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">person</i>
                  <p class="d-lg-none d-md-block">
                    Account
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="Login">Log out</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-8">
              <div class="card">
                <div class="card-header card-header-primary">
                <% String emailid=(String)session.getAttribute("Insuranceemailid"); %>
                  <h4 class="card-title">Insurance Details</h4>
                  <p class="card-category"></p>
                </div>
                <div class="card-body" style="width:90%;text-align:middle;border:solid 2px;margin: 12px 0 0px 50px;">
                  <form action="insurance_details" method="post">
                    <div class="row">
                      <div class="col-md-5">
                        <div class="form-group">
                          <label class="bmd-label-floating">Email address</label>
                          <input type="text" class="form-control" name="email" value="<%=emailid %>" readonly="readonly">
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="form-group">
                         
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                         
                        </div>
                      </div>
                    </div>
                    <label class="bmd-label-floating" style="color: purple;">
											Company Information</label>
										<div class="row">
											<div class="col-md-3">
												<div class="form-group">
													<label class="bmd-label-floating">Company Name</label> <input
														type="text" class="form-control" required="required"
														name="txtcompany">
												</div>
											</div>
											<div class="col-md-5">
												<div class="form-group">
													<label class="bmd-label-floating">Mobile Number</label> <input
														type="text" class="form-control" required="required"
														name="txtmobile">
												</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label class="bmd-label-floating">Web Site</label> <input
														type="text" class="form-control" required="required"
														name="txtwebsite">
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<label class="bmd-label-floating">Address</label> <input
														type="text" class="form-control" required="required"
														name="txtaddress">
												</div>
											</div>
										</div>
                    <center><label class="bmd-label-floating" style="color: purple;"> Medical Insurance Form Details</label></center> 
                      <div class="row">
                       <div class="col-md-3">
                        <div class="form-group">
                          <label class="bmd-label-floating">Policy No</label>
                          <input type="text" class="form-control" required="required" name="txtpolicyno">
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="form-group">
                          <label class="bmd-label-floating">Policy Name</label>
                          <input type="text" class="form-control" required="required" name="txtpolicename">
                        </div>
                      </div>
                       <div class="col-md-3">
                      
                        <div class="form-group">
                          <label class="bmd-label-floating">Policy Tenue(Year)</label>
                          <input type="text" class="form-control" required="required" name="txtpolicytenue">
                        </div>
                      </div>
                       <div class="col-md-3">
                      
                        <div class="form-group">
                          <label class="bmd-label-floating">Base Premium </label>
                          <input type="text" class="form-control" required="required" name="txtbasepremium">
                        </div>
                      </div>
                    </div>
                   
                     <label class="bmd-label-floating" style="color: purple;">Coverage</label>
                    <div class="row">
                      <div class="col-md-8">
                        <div class="form-group">
                          <label class="bmd-label-floating">Coverage</label>
                          <input type="text" class="form-control" required="required" name="txtCoverage">
                        </div>
                      </div>
                      <div class="col-md-3">
                      
                        <div class="form-group">
                          <label class="bmd-label-floating">Policy Amount </label>
                          <input type="text" class="form-control" required="required" name="txtamount">
                        </div>
                      </div>
                    </div>
                   
                    
                    
                 <input type="submit" name="submit" class="btn btn-primary pull-right" value="Save">
                   
                    <div class="clearfix"></div>
                  </form>
                </div>
              </div>
            </div>
           
          </div>
        </div>
      </div>
      </div>
  </div>
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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
  <!-- Library for adding dinamically elements -->
  <script src="assets/js/plugins/arrive.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chartist JS -->
  <script src="assets/js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="assets/js/material-dashboard.js?v=2.1.1" type="text/javascript"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="assets/demo/demo.js"></script>
  </body>

</html>
