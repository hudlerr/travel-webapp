<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
	<title>Travel</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/Login.css"/>
</head>
<body>
<c:if test="${error == true}">
	<b class="error">Invalid login or password.</b>
</c:if>
<c:if test="${logout == true}">
	<b class="logout">You have been logged out.</b>
</c:if>
	
				<c:url value="/login" var="loginUrl"/>
				<form action="${loginUrl}" method="POST" class="login100-form validate-form">
				
		 <c:if test="${param.error != null}">        
			<p>
				Invalid username and password.
			</p>
		</c:if>
		<c:if test="${param.logout != null}">       
			<p>
				You have been logged out.
			</p>
		</c:if>
	
					<h1 style="font-size: 50px";>Sign In</h1>
					<p>Start planning your travels</p><br>
					<br>
					

						<input class="input100" type="text" id="email" name="username" placeholder="Username">

						<input class="input100" type="password" id="email" name="password" placeholder="Password"><br><br></br><br>


 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						<button  class="button" id="submit">
							Login
						</button><br>
						<br>
						<br>
						<a class="txt1" href="/register" name="register">
							<p>Don't have an account?</p>
						</a>
					</div>
				</form>
				
				
											<!-- FOOTER -->
		  <!-- Site footer -->
<!--     <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-6">
            <h6>Travel smart</h6>
            <p class="text-justify">Don't want to deal with the hassle of hours of research? Would like to create a plan in one place with all your friends? Well, you have come to the best site that'll help you plan your perfect trip.
<br>
<br>
TravelSmart allows you to create a plan which is completely customizable from beginning to end.</p>
          </div>

          <div class="col-xs-6 col-md-3">
            <h6>Experiences</h6>
            <ul class="footer-links">
              <li>Hotel & Restaurant</li>
              <li>Adventure</li>
              <li>Family</li>
              <li>Camping</li>
            </ul>
          </div>

          <div class="col-xs-6 col-md-3">
            <h6>Information</h6>
            <ul class="footer-links">
              <li>About Us</li>
              <li>Contact Us</li>
              <li>Privacy Policy</a></li>
              <li>Sitemap</li>
            </ul>
          </div>
        </div>
        <hr>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-sm-6 col-xs-12">
            <p class="copyright-text">Copyright &copy; 2017 All Rights Reserved by 
         <a href="#">TravelSmart</a> | Made with ❤️ in Somalia
            </p>
          </div>

          <div class="col-md-4 col-sm-6 col-xs-12">
            <ul class="social-icons">
              <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
              <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>   
            </ul>
          </div>
        </div>
      </div>
</footer>
 -->

</body>
</html>