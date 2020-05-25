<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="/css/flaticon.css" >
    <link rel="stylesheet" type="text/css" href="css/footer.css"/>
    <link rel="stylesheet" type="text/css" href="css/hello.css"/>
<title>Page Title</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

</style>
</head>
<body>

<div class="header">
  <h1>Be a Traveler not a Tourist!</h1>
  <p id="para">Travel to the any corner of the world, without going around in circles</p>
</div>
<div class="navbar"> 
<form:form action="/generatePlan" method="POST" >
        <td colspan="2">
            <input type="submit" value="Create new trip" name="create" class="right"/>
        </td>
        </form:form>
        <form:form action="/invitef" method="POST">
        <td colspan="2">
            <input type="submit" value="Invite Friends" name="invite" />
        </td>
		</form:form>
		<form:form action="/groupchat" method="POST">
        <td colspan="2">
            <input type="submit" value="Group Chat" name="chat" />
        </td>
		</form:form>
		<form:form action="/moodboard" method="POST">
        <td colspan="2">
            <input type="submit" value="Moodboard" name="mood" />
        </td>
		</form:form>
		<form:form action="/list" method="POST">
        <td colspan="2">
            <input type="submit" value="My Trips"  />
        </td>
		</form:form>
		</div>

													<!-- about -->
<div class="row">
  <div class="side">
    <h2 style="text-align: center">About TravelSmart</h2><br>
    
    <div style="text-align: center"><i class="fa fa-map"></i>️</div>
    <P id="para" style="text-align: center">Create trip</p>
    <p style="text-align: center">Create a trip for you and your friends to begin to plan.</p><br>
    <br>
    <br>
    <div style="text-align: center"><i class="fa fa-user"></i>️</div>
    <P id="para" style="text-align: center">Invite friends</p>
    <p style="text-align: center">Email your friends to have them to be able to redirect to your page. Make sure to give the correct group name.</p><br>
    <br>
    <br>
    <div style="text-align: center"><i class="fa fa-laptop"></i>️</div>
    <P id="para" style="text-align: center">Group chat</p>
    <p style="text-align: center">Use our inbuilt group chat to make plans right then and there with your friends</p><br>
    <br>
    <br>
    <div style="text-align: center"><i class="fa fa-plane"></i>️</div>
    <P id="para" style="text-align: center">Plan & Organise</p>
    <p style="text-align: center">Create categories, and save links to vote, fill in a moodboard for inspiration!</p><br>
  </div>
  
  
  <div class="main">
    <h2 style="text-align: center">Best places to travel</h2>
    <h5 id="para" style="text-align: center">Our top picks</h5><br>
    <br>
    <div class="columnContainer">
  <div class="imageContainer1" >
   <h4 id="para">Faro, portugal</h4>
  </div>
  <div class="imageContainer2">
    <h4 id="para">Great Rift Valley, Kenya</h4>
  </div>
  <div class="imageContainer3">
    <h4 id="para">Machu Picchu, Peru</h4>
  </div>
</div>
    <br>
    
    <h2 style="text-align: center">Best Hotels & Restaurants</h2>
    <h5 id="para" style="text-align: center">Our top picks</h5><br>
    <br>
    <div class="columnContainer">
  <div class="imageContainer4" >
   <h4 id="para" style="color: white">Palais Imperial, Marrakesh, Morrocco</h4>
  </div>
  <div class="imageContainer5">
    <h4 id="para" style="color: white">The heights, Cape Town, South Africa</h4>
  </div>
  <div class="imageContainer6">
    <h4 id="para" style="color: white">Cosy Cafe, Paris, France</h4>
  </div>
</div>
  </div>
</div>
		 										 <!-- Site footer -->
		 										 
    <div class="site-footer">
    <div class = footer>
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
              <li><a href="http://airbnb.com">Hotel & Restaurant</a></li>
              <li><a href="http://explore.co.uk">Adventure</a></li>
              <li><a href="http://trivago.com">Family</a></li>
              <li><a href="http://campingtravelclub.com">Camping</a></li>
            </ul>
          </div>

          <div class="col-xs-6 col-md-3">
            <h6>Information</h6>
            <ul class="footer-links">
              <li><a href="http://scanfcode.com/about/">About Us</a></li>
              <li><a href="http://scanfcode.com/contact/">Contact Us</a></li>
              <li><a href="http://scanfcode.com/privacy-policy/">Privacy Policy</a></li>
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
         <a href="#">TravelSmart</a> | Made with <i class="fa fa-heart"></i>️ in Somalia
            </p>
          </div>

          <div class="col-md-4 col-sm-6 col-xs-12">
            <ul class="social-icons">
              <li><a class="facebook" href="http://facebook.com"><i class="fa fa-facebook"></i></a></li>
              <li><a class="twitter" href="http://twitter.com"><i class="fa fa-twitter"></i></a></li>
              <li><a class="dribbble" href="http://dribble.com"><i class="fa fa-dribbble"></i></a></li>
              <li><a class="linkedin" href="http://linkedin.com"><i class="fa fa-linkedin"></i></a></li>   
            </ul>
          </div>
        </div>
      </div>
      </div>
</div>

</body>
</html>
