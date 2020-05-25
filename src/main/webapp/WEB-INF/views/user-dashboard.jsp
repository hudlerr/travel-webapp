<!DOCTYPE HTML>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- ${pageContext.request.contextPath} --%>
<html>

<head>
<title>Travel</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="/js/dashboard.js"></script>
<link rel="stylesheet" type="text/css" href="css/dash.css"/>
<link href="css/bootstrap.css" rel="stylesheet" />
<style>
.navbar-brand-logo{
    padding: 0;
}
.navbar-brand-logo .logo{
    border: 1px solid #333333;
    border-radius: 50%;
    float: left;
    overflow: hidden;
    width: 60px;
}
.navbar .navbar-brand-logo .brand{
    color: #FFFFFF;
    float: left;
    font-size: 18px;
    font-weight: 400;
    line-height: 20px;
    margin-left: 10px;
    margin-top: 10px;
    width: 60px;
}
.navbar-default .navbar-brand-logo .brand{
    color: #555;
}
body {
  font-family: Arial, Helvetica, sans-serif;
}
.navbar {
  overflow: hidden;
  background-color: #FF8C00;
}
.navbar a {
float:right-top;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}
.dropdown {
  float: right;
  overflow: hidden;
}
.brand{
font-family: Arial;
color: white;
}
.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}
.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: grey;
}
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}
.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}
.dropdown-content a:hover {
  background-color: #ddd;
}
.dropdown:hover .dropdown-content {
  display: block;
}
.float{
  float:left;
}
body {
	background: #F8A434;
	font-family: 'Lato', sans-serif;
	color: #FDFCFB;
	text-align: center;
}
#element1 {
	display: inline-block;
	margin-right: 10px;
}
#element2 {
	display: inline-block;
}
#logout {
	position: absolute;
	left: 250px;
	top: 10px;
}
/* Set height of body and the document to 100% to enable "full page tabs" */
body, html {
	height: 100%;
	margin: 0;
	/* font-family: Arial; */
}
/* Style tab links */
.tablink {
	background-color: #555;
	color: white;
	float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	font-size: 17px;
	width: 25%;
}


#para{
	font-size: 15px;
	text-transform: uppercase;
	letter-spacing: 5px;	
}

#font{
	font-size: 15px;
	letter-spacing: 5px;	
}

/* Increase the font size of the heading */
.titles{
 	font-size: 15px;
	text-transform: uppercase;
	letter-spacing: 5px;
}

/* Header/logo Title */
.headertop{
  padding: 80px;
  text-align: center;
  font-family: 'Lato', sans-serif;
  background-image: url("https://colorlib.com/preview/theme/traveland/images/bg_1.jpg");
  color: white;
}

.logout {
	position: absolute;
	left: 3px;
	top: 10px;
	height: 20px;
}

#email{
   width: 50%;
  height: 40px;
  background: #FDFCFB;
  font-family: inherit;
  color: #737373;
  letter-spacing: 1px;
  text-indent: 5%;
  border-radius: 5px 0 0 5px;
   display: inline-block;
   max-width: 500px;
  margin: auto;
}

#center{
	 max-width: 500px;
  margin: auto;
}

.navbar-brand-logo{
    padding: 0;
}
.navbar-brand-logo .logo{
    border: 1px solid #333333;
    border-radius: 50%;
    float: left;
    overflow: hidden;
    width: 60px;
}
.navbar .navbar-brand-logo .brand{
    color: #FFFFFF;
    float: left;
    font-size: 18px;
    font-weight: 400;
    line-height: 20px;
    margin-left: 10px;
    margin-top: 10px;
    width: 60px;
}
.navbar-default .navbar-brand-logo .brand{
    color: #555;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

.navbar a {
float:right;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: right;
  overflow: hidden;
}

.brand{
font-family: Arial;
color: white;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: grey;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}

.float{
  float:left;
}

body {
	background: #F8A434;
	font-family: 'Lato', sans-serif;
	color: #FDFCFB;
	text-align: center;
}

#element1 {
	display: inline-block;
	margin-right: 10px;
}

#element2 {
	display: inline-block;
}

/* Set height of body and the document to 100% to enable "full page tabs" */
body, html {
	height: 100%;
	margin: 0;
	/* font-family: Arial; */
}

/* Style tab links */
.tablink {
	background-color: #555;
	color: white;
	float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	font-size: 17px;
	width: 25%;
}

.tablink:hover {
	background-color: #777;
}

/* Style the tab content (and add height:100% for full page content) */
.tabcontent {
	color: 	black;
	display: none;
	padding: 100px 20px;
	height: 100%;
}

#Home {
	background-color: 	#FEE5B4;
}

#News {
	background-color: 	#FEE5B4;
}

#Contact {
	background-color: 	#FEE5B4;
}

#About {
	background-color: 	#FEE5B4;
}

/* The Overlay (background) */
.overlay {
	/* Height & width depends on how you want to reveal the overlay (see JS below) */
	height: 100%;
	width: 0;
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	background-color: rgb(0, 0, 0); /* Black fallback color */
	background-color: rgba(0, 0, 0, 0.9); /* Black w/opacity */
	overflow-x: hidden; /* Disable horizontal scroll */
	transition: 0.5s;
	/* 0.5 second transition effect to slide in or slide down the overlay (height or width, depending on reveal) */
}

/* Position the content inside the overlay */
.overlay-content {
	position: relative;
	top: 25%; /* 25% from the top */
	width: 100%; /* 100% width */
	text-align: center; /* Centered text/links */
	margin-top: 30px;
	/* 30px top margin to avoid conflict with the close button on smaller screens */
}

/* The navigation links inside the overlay */
.overlay a {
	padding: 8px;
	text-decoration: none;
	font-size: 36px;
	color: #818181;
	display: block; /* Display block instead of inline */
	transition: 0.3s; /* Transition effects on hover (color) */
}

/* When you mouse over the navigation links, change their color */
.overlay a:hover, .overlay a:focus {
	color: #f1f1f1;
}

/* Position the close button (top right corner) */
.overlay .closebtn {
	position: absolute;
	top: 20px;
	right: 45px;
	font-size: 60px;
}

/* When the height of the screen is less than 450 pixels, change the font-size of the links and position the close button again, so they don't overlap */
@media screen and (max-height: 450px) {
	.overlay a {
		font-size: 20px
	}
	.overlay .closebtn {
		font-size: 40px;
		top: 15px;
		right: 35px;
	}
}

/* Include the padding and border in an element's total width and height */
* {
	box-sizing: border-box;
}

/* Remove margins and padding from the list */
ul {
	margin: 50;
	padding: 0;
}

/* Style the list items */
ul li {
	cursor: pointer;
	position: relative;
	padding: 12px 8px 12px 40px;
	list-style-type: none;
	background: #eee;
	font-size: 18px;
	colour: black;
	transition: 0.2s;
}

/* Set all odd list items to a different color (zebra-stripes) */
ul li:nth-child(odd) {
	background: #f9f9f9;
}

/* Darker background-color on hover */
ul li:hover {
	background: #ddd;
}


.close:hover {
	background-color: #f44336;
	color: white;
}

/* Style the header */
.header {
	background-color: #FEE5B4;
	padding: 30px 40px;
	color: white;
	text-align: center;
}

/* Clear floats after the header */
.header:after {
	content: "";
	display: table;
	clear: both;
}

/* Style the input */
input {
	  width: 50%;
  height: 40px;
  background: #FDFCFB;
  font-family: inherit;
  color: #737373;
  letter-spacing: 1px;
  text-indent: 5%;
  border-radius: 5px 0 0 5px;
   display: inline-block;
   max-width: 500px;
  margin: auto;
}

/* Style the "Add" button */
.addBtn {
	width: 55%;
	height: 36px;
	background: black;
	font-family: inherit;
	font-weight: bold;
	color: inherit;
	letter-spacing: 1px;
	border-radius: 0 5px 5px 0;
	cursor: pointer;
	transition: background .3s ease-in-out;
	
}

.addBtn:hover {
	background-color: #bbb;
}

#myUL {
	color: black;
}

#myUL2 {
	color: black;
}

#myUL3 {
	color: black;
}

#myUL4 {
	color: black;
}
</style>
</head>
<body>

											      <!-- NAVBAR -->
<div class="headertop">											      
<div class="navbar">
<div class="float">
<a class="navbar-brand navbar-brand-logo" style="float: left">
<div class="logo" style="float: left">
 <img src="https://s3.amazonaws.com/creativetim_bucket/new_logo.png">
</div>
</a>
                <div class="brand" id="para" style="color: white"><br> Your<br> Dashboard </div>
      </div>          
<div class="icon">
<a href="/hello"><i class="fa fa-fw fa-laptop"></i> Group chat</a> 
</div>
  <a href="/hello"><i class="fa fa-fw fa-plane"></i> New trip</a> 
  <a href="/hello"><i class="fa fa-fw fa-plus"></i> Invite friends</a> 

</div>

												 <!-- TITLE -->
	<div class="titles">
		<c:forEach items="${trips}" var="trip">
			<h1>
				<c:out value="${trip.destination}" />
			</h1>
			<div id="element1">
				<p>
					<c:out value="${trip.checkin}" />
				</p>
			</div>
			<div id="element2">
				<p>
					<c:out value="${trip.checkout}" />
				</p>
			</div>
			<br><a href="/delete?id=${trip.id}">Delete</a><br>
		</c:forEach>
	</div>
</div>


										<!-- TABLE FOR CATEGORIES id="defaultOpen"-->
	<c:forEach items="${trips}" var="trip"> 
		<button class="tablink" id="para" onclick="openPage('Home', this, 'orange')">
			<c:out value="${trip.name1}" />
		</button>
		<button class="tablink" id="para" onclick="openPage('News', this, 'orange')">
			<c:out value="${trip.name2}" />
		</button>
		<button class="tablink" id="para" onclick="openPage('Contact', this, 'orange')">
			<c:out value="${trip.name3}" />
		</button>
		<button class="tablink" id="para" onclick="openPage('About', this, 'orange')">
			<c:out value="${trip.name4}" />
		</button>



		<div id="Home" class="tabcontent">

				<div id="myDIV" class="header">
					<p style="margin: 5px">
					<p id="para">
						Organise your links here for possible
						<c:out value="${trip.name1}" /><br>
						<br>
						</p>
					<form:form action="/list/add" method="POST">
					<div style="width:800px; margin:0 auto;">
						<input type="text" id="email" name="newItem" id="myInput"
							placeholder="Title...">
						<input type="submit" class="addBtn" value="Add" />
						</div>
					</form:form>
				</div>

				<ul id="myUL">
					<li>www.example.com - example <c:out value="${trip.name1}" /></li>
		<%-- 			<c:forEach items="${trip.items1}" var="item1"><c:out value="${item1}" /><a href="/list/delete?name=1&item=${item1}">delete</a>
					</c:forEach> --%>
					<c:forEach items="${trip.items1}" var="item1">
					<li><c:out value="${item1}" /></li>
				</c:forEach>
				</ul>
			</div>


		<div id="News" class="tabcontent">

			<div id="myDIV" class="header">
				<p style="margin: 5px">
				<p id="para">
					Organise your links here for possible
					<c:out value="${trip.name2}" /><br>
					<br>
				</p>
				<form:form action="/list/addItem2" method="POST">
				<div style="width:800px; margin:0 auto;">
					<input type="text" id="email" name="newItem2" id="myInput2"
						placeholder="Title...">
					<input type="submit" class="addBtn" value="Add" />
					</div>
				</form:form>
			</div>

			<ul id="myUL">
				<li>www.example.com - example <c:out value="${trip.name2}" /></li>
				<c:forEach items="${trip.items2}" var="item2">
					<li><c:out value="${item2}" /></li>
				</c:forEach>
			</ul>
		</div>



		<div id="Contact" class="tabcontent">

			<div id="myDIV" class="header">
				<p style="margin: 5px">
				<p id="para">
					Organise your links here for possible
					<c:out value="${trip.name3}" /><br>
					<br>
				</p>

					<form:form action="/list/addItem3" method="POST">
					<div style="width:800px; margin:0 auto;">
						<input type="text" id="email" name="newItem3" id="myInput3"
							placeholder="Title...">
						<input type="submit" class="addBtn" value="Add" />
						</div>
					</form:form>
			</div>

			<ul id="myUL">
				<li>www.example.com - example <c:out value="${trip.name3}" /></li>
				<c:forEach items="${trip.items3}" var="item3">
					<li><c:out value="${item3}" /></li>
				</c:forEach>
			</ul>
		</div>



		<div id="About" class="tabcontent">

			<div id="myDIV" class="header">
				<p style="margin: 5px">
				<p id="para">
					Organise your links here for possible
					<c:out value="${trip.name4}" />
					<br>
				</p>
				<form:form action="/list/addItem4" method="POST">
				<div style="width:800px; margin:0 auto;">
					<input type="text" id="email" name="newItem4" id="myInput4"
						placeholder="Title...">
					<input type="submit" class="addBtn" value="Add" />
					</div>
				</form:form>
			</div>

			<ul id="myUL">
				<li>www.example.com - example <c:out value="${trip.name4}" /></li>
				<c:forEach items="${trip.items4}" var="item4">
					<li><c:out value="${item4}" /></li>
				</c:forEach>
			</ul>
		</div>
</c:forEach>

<div  class="navbar">
<div class="logout">
		<c:url value="/logout" var="logoutUrl" />
		<form action="${logoutUrl}" method="get">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
			<button><i class="fa fa-fw fa-laptop"></i>Log out</button>
		</form>
	</div>
	</div>
	
	
</body>
</html>
