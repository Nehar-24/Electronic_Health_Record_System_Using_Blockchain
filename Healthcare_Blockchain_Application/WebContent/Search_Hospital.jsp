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
<title>Hospital Section</title>
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
				<a href="#"
					class="simple-text logo-normal"> <b>Hospital Section</b> </a>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav">
					<li class="nav-item active  "><a class="nav-link" href="HospitalProfile.jsp">
							<p><b>Dashboard</b></p>
					</a></li>
					<li class="nav-item "><a class="nav-link"
						href="H_ShowPatient.jsp">
							<p><b>User Profile</b></p>
					</a></li>

					<li class="nav-item active"><a class="nav-link"
						href="Search_Hospital.jsp">
							<p><b>User Profile Search</b></p>
					</a></li>
					
					<li class="nav-item ">
            		<a class="nav-link" href="showblockchain.jsp">
              		<p>Show Block Chain</p>
            		</a></li>
				</ul>
			</div>
		</div>
		<div class="main-panel">
		
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
			
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header card-header-primary">
									<h4 class="card-title ">Info Patient Profile</h4>
								</div>
								<form action="Search_Hospital.jsp" method="post">
									<table class="table" style="width:90%;text-align:middle;border:solid 2px;margin: 12px 0 0px 50px;">
										<tbody>
											<tr>
												<td>Search Email-Id: <!-- <input type="text" name="P_ID" placeholder="Enater ID" required="required"> -->
													<select name="P_ID">
														<option selected="selected">Select Email-Id</option>
														<%
									try {
										Connection con = Dbconn.conn();
										String str = "select * from tblregister";
										Statement st01 = con.createStatement();
										ResultSet rs01 = st01.executeQuery(str);
										while (rs01.next()) {
										
									%>
										<option value="<%=rs01.getString("Email_IDs")%>"><%=rs01.getString("Email_IDs") %></option>
									<%
										}
									} catch (SQLException e) {
									}
									%>
										</select> <input type="submit" name="submit" value="Search">
									</td>
								</tr>
							</tbody>
						</table>
					</form>
					
								<table class="table" style="width:90%;text-align:middle;border:solid 2px;margin: 12px 0 0px 50px;">
									<thead class=" text-primary">
									<tr>
										<th>ID</th>
										<th>Patient Name</th>
										<th>Patient Email</th>
										<th>Date</th>
									</tr>
									</thead>
									<tbody>
										<%
										ResultSet rs = null;
										PreparedStatement st = null;
										String quer = null;
										String P_ID=null;
										P_ID=request.getParameter("P_ID");
										if(P_ID==null)
										{
											
										}
										else{
										try {
											Connection con = Dbconn.conn();
											quer = "select * from tblmasterpatientnew where Email_ID='"+P_ID+"'";
											st = con.prepareStatement(quer);
											rs = st.executeQuery();
											while (rs.next()) {			
										%>
										<tr>
											<td><a
												href="HSearch_Hospital.jsp?P_ID=<%=rs.getString(1) %>"><%=rs.getString(1) %></a>
											</td>
											<td><a
												href="HSearch_Hospital.jsp?P_ID=<%=rs.getString(1) %>"><%=rs.getString(2) %></a>
											</td>
											<td><a
												href="HSearch_Hospital.jsp?P_ID=<%=rs.getString(1) %>"><%=rs.getString(12) %></a>
											</td>
											<td><a
												href="HSearch_Hospital.jsp?P_ID=<%=rs.getString(1) %>"><%=rs.getString(13) %></a>
											</td>
										</tr>

										<%
											}
										}catch (SQLException e) {
									   }
									  }
									%>
									</tbody>
								</table>
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
	<script src="assets/js/plugins/moment.min.js"></script>
	<script src="assets/js/plugins/sweetalert2.js"></script>
	<script src="assets/js/plugins/jquery.validate.min.js"></script>
	<script src="assets/js/plugins/jquery.bootstrap-wizard.js"></script>
	<script src="assets/js/plugins/bootstrap-selectpicker.js"></script>
	<script src="assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
	<script src="assets/js/plugins/jquery.dataTables.min.js"></script>
	<script src="assets/js/plugins/bootstrap-tagsinput.js"></script>
	<script src="assets/js/plugins/jasny-bootstrap.min.js"></script>
	<script src="assets/js/plugins/fullcalendar.min.js"></script>
	<script src="assets/js/plugins/jquery-jvectormap.js"></script>
	<script src="assets/js/plugins/nouislider.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
	<script src="assets/js/plugins/arrive.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
	<script src="assets/js/plugins/chartist.min.js"></script>
	<script src="assets/js/plugins/bootstrap-notify.js"></script>
	<script src="assets/js/material-dashboard.js?v=2.1.1"
		type="text/javascript"></script>
	<script src="assets/demo/demo.js"></script>
	<script>
    $(document).ready(function() {
      $().ready(function() {
        $sidebar = $('.sidebar');
        $sidebar_img_container = $sidebar.find('.sidebar-background');
        $full_page = $('.full-page');
        $sidebar_responsive = $('body > .navbar-collapse');
        window_width = $(window).width();
        fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();
        if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
          if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
            $('.fixed-plugin .dropdown').addClass('open');
          }
        }

        $('.fixed-plugin a').click(function(event) {
          // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
          if ($(this).hasClass('switch-trigger')) {
            if (event.stopPropagation) {
              event.stopPropagation();
            } else if (window.event) {
              window.event.cancelBubble = true;
            }
          }
        });

        $('.fixed-plugin .active-color span').click(function() {
          $full_page_background = $('.full-page-background');
          $(this).siblings().removeClass('active');
          $(this).addClass('active');
          var new_color = $(this).data('color');
          if ($sidebar.length != 0) {
            $sidebar.attr('data-color', new_color);
          }

          if ($full_page.length != 0) {
            $full_page.attr('filter-color', new_color);
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.attr('data-color', new_color);
          }
        });

        $('.fixed-plugin .background-color .badge').click(function() {
          $(this).siblings().removeClass('active');
          $(this).addClass('active');
          var new_color = $(this).data('background-color');
          if ($sidebar.length != 0) {
            $sidebar.attr('data-background-color', new_color);
          }
        });

        $('.fixed-plugin .img-holder').click(function() {
          $full_page_background = $('.full-page-background');
          $(this).parent('li').siblings().removeClass('active');
          $(this).parent('li').addClass('active');

          var new_image = $(this).find("img").attr('src');
          if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            $sidebar_img_container.fadeOut('fast', function() {
              $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
              $sidebar_img_container.fadeIn('fast');
            });
          }

          if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');
            $full_page_background.fadeOut('fast', function() {
              $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
              $full_page_background.fadeIn('fast');
            });
          }

          if ($('.switch-sidebar-image input:checked').length == 0) {
            var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');
            $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
            $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
          }
        });

        $('.switch-sidebar-image input').change(function() {
          $full_page_background = $('.full-page-background');
          $input = $(this);
          if ($input.is(':checked')) {
            if ($sidebar_img_container.length != 0) {
              $sidebar_img_container.fadeIn('fast');
              $sidebar.attr('data-image', '#');
            }

            if ($full_page_background.length != 0) {
              $full_page_background.fadeIn('fast');
              $full_page.attr('data-image', '#');
            }

            background_image = true;
          } else {
            if ($sidebar_img_container.length != 0) {
              $sidebar.removeAttr('data-image');
              $sidebar_img_container.fadeOut('fast');
            }

            if ($full_page_background.length != 0) {
              $full_page.removeAttr('data-image', '#');
              $full_page_background.fadeOut('fast');
            }
            background_image = false;
          }
        });

        $('.switch-sidebar-mini input').change(function() {
          $body = $('body');
          $input = $(this);
          if (md.misc.sidebar_mini_active == true) {
            $('body').removeClass('sidebar-mini');
            md.misc.sidebar_mini_active = false;
            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();
          } else {
            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');
            setTimeout(function() {
              $('body').addClass('sidebar-mini');
              md.misc.sidebar_mini_active = true;
            }, 300);
          }

          // we simulate the window Resize so the charts will get updated in realtime.
          var simulateWindowResize = setInterval(function() {
            window.dispatchEvent(new Event('resize'));
          }, 180);

          // we stop the simulation of Window Resize after the animations are completed
          setTimeout(function() {
            clearInterval(simulateWindowResize);
          }, 1000);
        });
      });
    });
  </script>
	<script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      md.initDashboardPageCharts();
    });
  </script>
</body>
</html>
