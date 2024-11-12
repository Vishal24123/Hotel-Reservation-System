<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Book Hotel Room Form</title>

<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<link rel="stylesheet" href="css/style1.css">
</head>
<body>
	<input type="hidden" id="status" value = "<%=request.getAttribute("status")%>">
	<div class="main">
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Book Room</h2>
					
						<form method="post" action="register" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Your Name" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> 
								<!-- <select name="typeofroom" id="typeofroom" style="border-top-width:1px border-left-width:20px margin-top:1px margin-left:120px">
  									<option value="Deluxe">Deluxe</option>
								  	<option value="DeluxePrime">Deluxe Prime</option>
								  	<option value="DeluxeSupreme">Deluxe Supreme</option>
								  	<option value="ClubSuite">Club Suite</option>
								  	<option value="ExecutiveSuite">Executive Suite</option>
								  	<option value="ExecutiveClubSuite">Executive Club Suite</option>
								</select>-->
								<input type="text" name="typeofroom" id="typeofroom"
									placeholder="Type of Room" /> 
							</div>
							<div class="form-group">
								<label for="noofpeople"><i class="zmdi zmdi-account material-icons-name"></i></label>
								<input type="text" name="noofpeople" id="noofpeople"
									placeholder="Number of People" />
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="mobile" id="mobile"
									placeholder="Contact no" />
							</div>
							<div class="form-group">
								<label for="address"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="address" id="address"
									placeholder="Address" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Book Now" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/signup-image.jpg" alt="sign up image">
						</figure>
						<a href="index.jsp" class="signup-image-link">Home Page</a>
					</div>
				</div>
			</div>
		</section>


	</div>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "success") {
			swal ("Congrats", "Booking is successful", "success");
		}
	</script>


</body>

</html>