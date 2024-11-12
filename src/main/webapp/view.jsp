<%
	if (session.getAttribute("name")==null){
		response.sendRedirect("login.jsp");
	}
%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>

<!DOCTYPE HTML>
<html>
	<head>
		<title>View Hotel Bookings</title>
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link rel="stylesheet" href="css/responsiveslides.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script src="js/responsiveslides.min.js"></script>
		  <script>
		   $(function () {
			      $("#slider1").responsiveSlides({
			        maxwidth: 1600,
			        speed: 600
			      });
			});
		  </script>
	</head>
	<body>
		<div class="header">
			<div class="wrap">
				<div class="header-top">
					<div class="logo">
						<a href="#"><img src="images/logo2.png" title="logo" /></a>
					</div>
		                     
					
					<div class="clear"> </div>
				</div>
			</div>
			<div class="header-top-nav">
				<div class="wrap">
					<ul>
						<li><a href="#"><%=session.getAttribute("name") %></a></li>
						<li><a href="logout">Logout</a></li>
						
						<div class="clear"> </div>
					</ul>
				</div>
			</div>
		</div>
		<div class="clear"> </div>
		<div class="image-slider">
					
					    <ul class="rslides" id="slider1">
					      <li><img src="images/slider2.jpg" alt=""></li>
					      <li><img src="images/slider1.jpg" alt=""></li>
					      <li><img src="images/slider3.jpg" alt=""></li>
					    </ul>
					
		</div>
		<div class="content">
				<div class="quit">
					<p><span class="start">All </span> Booking <span class="end">Details </span></p>
				</div>
		</div>
    	<div class="clear"></div>
</div>
<div class="clear"></div>
<div class="clear"></div>
<div style="float: left; width: 16%; border: 1px solid #000000;background:grey;text-align:center;font-weight:bold">NAME</div>
<div style="float: left; width: 16%; border: 1px solid #000000;background:grey;text-align:center;font-weight:bold">EMAIL</div>
<div style="float: left; width: 16%; border: 1px solid #000000;background:grey;text-align:center;font-weight:bold">TYPE OF ROOM</div>
<div style="float: left; width: 16%; border: 1px solid #000000;background:grey;text-align:center;font-weight:bold">NUMBER OF PEOPLE</div>
<div style="float: left; width: 16%; border: 1px solid #000000;background:grey;text-align:center;font-weight:bold">CONTACT DETAILS</div>
<div style="float: left; width: 16%; border: 1px solid #000000;background:grey;text-align:center;font-weight:bold">COMMUNICATION ADDRESS</div>
<%
	Statement statement=null;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelbooking?useSSL=false&allowPublicKeyRetrieval=true","root","V1shal@24");
		statement=con.createStatement();
		String sql = "SELECT * FROM booking";
		
		ResultSet rs = statement.executeQuery(sql);
		
		while (rs.next()) {
%>
		<div style="float: left; width: 16%; border: 1px solid #000000;background:#FBD603;text-align:center"><%=rs.getString("name")%></div>
		<div style="float: left; width: 16%; border: 1px solid #000000;background:#ABBAEA;text-align:center"><%=rs.getString("email")%></div>
		<div style="float: left; width: 16%; border: 1px solid #000000;background:#FBD603;text-align:center"><%=rs.getString("typeofroom")%></div>
		<div style="float: left; width: 16%; border: 1px solid #000000;background:#ABBAEA;text-align:center"><%=rs.getString("noofpeople")%></div>
		<div style="float: left; width: 16%; border: 1px solid #000000;background:#FBD603;text-align:center"><%=rs.getString("mobile")%></div>
		<div style="float: left; width: 16%; border: 1px solid #000000;background:#ABBAEA;text-align:center"><%=rs.getString("address")%></div>
<%		}
	} catch (Exception e){
				e.printStackTrace();
	}
%>
	</body>
</html>

