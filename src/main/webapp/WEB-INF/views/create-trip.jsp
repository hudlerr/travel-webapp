 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/create-trip.css"/>
<title>Create Trip</title>
</head>
<body>
	<div style="text-align: center">

		<p>
			<c:if test="${error == true}">
				<b class="error">Do not leave fields blank.</b>
			</c:if>
		</p>

		<form:form id="regForm" action="/dashboard" method="POST"
			modelAttribute="trip">

			<h1 class = "header">Create Trip!</h1>
			<br>
			<br>
			<c:if test="${param.error != null}">
				<p>Do not leave fields blank.</p>
			</c:if>
			
			<div class="tab">

				<div class="input">
					
					<p id="description">Destination</p>
					<input class="awesomplete" oninput="this.className = ''"
						type="text" list="country" id="email" name="destination"
						placeholder="Search a country">
					<datalist id="country">

		<option> Afghanistan </option> <option> Albania </option>  <option> Algeria </option> <option> Andorra </option>
 		<option> Angola </option> <option> Antigua and Barbuda </option> <option>  Argentina </option>	<option>	Armenia </option>
 		<option> Australia </option> <option> Austria </option> <option> Azerbaijan </option> <option> The Bahamas </option> <option> Bahrain </option>
 		<option> Bangladesh </option> <option> Barbados </option> <option> Belarus </option> <option> Belgium </option> <option> Belize </option>
 		<option> Benin </option> <option>  Bhutan </option> <option> Bolivia </option> <option> Bosnia and Herzegovina </option> <option> Botswana </option>
 		<option> Brazil </option> <option> Brunei </option> <option> Bulgaria </option> <option> Burkina Faso </option> <option> Burundi </option> 
 		<option> Cabo Verde </option> <option> Cambodia </option> <option> Cameroon </option> <option> Canada </option> <option> Central African Republic </option>
 		<option> Chad </option> <option> Chile </option> <option> China </option> <option> Colombia </option> <option> Comoros </option> <option> Democratic Republic of the Congo </option>
 		<option> Republic of the Congo </option> <option> Costa Rica </option> <option> Côte d’Ivoire </option> <option> Croatia </option> <option> Cuba </option> <option> Cyprus </option> <option> Czech Republic </option>
 		<option> Denmark </option> <option> Djibouti </option> <option> Dominica </option> <option> Dominican Republic </option> <option> East Timor (Timor-Leste) </option> <option> Ecuador </option> <option> Egypt </option>
 		<option> El Salvador </option> <option> Equatorial Guinea </option> <option> Eritrea </option> <option> Estonia </option> <option> Eswatini </option> <option> Ethiopia </option> <option> Fiji </option> <option> Finland </option>
 		<option> France </option> <option> Gabon </option> <option> The Gambia </option> <option> Georgia </option> <option> Germany </option> <option> Ghana </option> <option> Greece </option> <option> Grenada </option> <option> Guatemala </option>
 		<option> Guinea </option> <option> Guinea-Bissau </option> <option> Guyana </option> <option> Haiti </option> <option> Honduras </option> <option> Hungary </option> <option> Iceland </option> <option> India </option> <option> Indonesia </option>
 		<option> Iran </option> <option> Iraq </option> <option> Ireland </option> <option> Israel </option> <option> Italy </option> <option> Jamaica </option> <option> Japan </option> <option> Jordan </option>
 		<option> Kazakhstan </option> <option> Kenya </option> <option> Kiribati </option> <option> Korea </option> <option> Kosovo </option> <option> Kuwait </option> <option> Kyrgyzstan </option> <option> Laos </option> <option>  Latvia </option> <option> Lebanon </option>
 		<option> Lesotho </option> <option> Liberia </option> <option> Libya </option> <option> Liechtenstein </option> <option> Lithuania </option> <option> Luxembourg </option>
 		<option> Madagascar </option> <option> Malawi </option> <option> Malaysia </option> <option> Maldives </option> <option> Mali </option> <option> Malta </option> <option> Marshall Islands </option> <option> Mauritania </option> <option> Mauritius </option>
 		<option> Mexico </option> <option> Micronesia </option> <option> Moldova </option> <option> Monaco </option> <option> Mongolia </option> <option> Montenegro </option> <option> Morocco </option> <option> Mozambique </option> <option> Myanmar (Burma) </option>
 		<option> Namibia </option> <option> Nauru </option> <option> Nepal </option> <option> Netherlands </option> <option> New Zealand </option> <option> Nicaragua </option> <option> Niger </option>  <option> Nigeria </option> <option> North Macedonia </option> <option> Norway</option>
 		<option> Oman </option> <option> Pakistan </option> <option> Palau </option> <option> Panama </option> <option> Papua New Guinea </option> <option> Paraguay </option> <option> Peru </option> <option> Philippines </option> <option> Poland </option> <option> Portugal </option>
 		<option> Qatar </option> <option> Romania </option> <option> Russia </option> <option> Rwanda  </option> <option> Saint Kitts and Nevis </option> <option> Saint Lucia </option> <option> Saint Vincent and the Grenadines </option>
 		<option> Samoa </option> <option> San Marino </option> <option> Sao Tome and Principe </option> <option> Saudi Arabia </option> <option> Senegal </option> <option>  Serbia </option> <option> Seychelles </option> <option> Sierra Leone </option> <option> Singapore </option> 
 		<option> Slovakia </option> <option> Slovenia </option> <option> Solomon Islands </option> <option> Somalia </option> <option> South Africa </option> <option> Spain </option> <option> Sri Lanka </option>
 		<option> Sudan </option> <option> Suriname </option> <option> Sweden </option> <option> Switzerland </option> <option> Syria </option> <option> Taiwan </option> <option> Tajikistan </option> <option> Tanzania </option> <option> Thailand </option> <option> Togo </option>
 		<option> Tonga </option> <option> Trinidad and Tobago </option> <option> Tunisia </option> <option> Turkey </option> <option> Turkmenistan </option> <option> Tuvalu </option> <option> Uganda </option> <option> Ukraine </option> <option> United Arab Emirates </option> <option> United Kingdom </option>
 		<option> United States </option> <option> Uruguay </option> <option> Uzbekistan </option> <option> Vanuatu </option> <option> Vatican City </option> <option> Venezuela </option> <option> Vietnam </option>
 		<option> Yemen </option> <option> Zambia </option> <option> Zimbabwe </option>
					</datalist>
				</div>

				<p id="description">Check-in date</p>
				<input type="date" oninput="this.className = ''"
					data-date-inline-picker="true" class="button" id="email"
					name="checkin" placeholder="Check in date">
				<p id="description">Check-out date</p>
				<input type="date" oninput="this.className = ''"
					data-date-inline-picker="true" class="button" id="email"
					name="checkout" placeholder="Check out date">
				<p id="description">Price Limit (£)</p>
				<input type="text" oninput="this.className = ''" class="button"
					id="email" name="budget" placeholder="5000"><br>
			</div>

			<div class="tab">
				<p>Add up to four categories, to help you plan for your trip:</p>
				<p id="description">
					<input type="text" oninput="this.className = ''" name="name1"
						id="email" placeholder="Flights">
				<p id="description">
					<input type="text" oninput="this.className = ''" name="name2"
						id="email" placeholder="Hotels">
				<p id="description">
					<input type="text" oninput="this.className = ''" name="name3"
						id="email" placeholder="Activities">
				<p id="description">
					<input type="text" oninput="this.className = ''" name="name4"
						id="email" placeholder="Restaurants"><br>
				<br>
				<br>
				<br>
				<input type="submit" oninput="this.className = ''"
					value="Create trip" class="button" id="submit" />
			</div>

			<div style="overflow: auto;">
				<div style="float: right;">
					<button type="button" id="submit" onclick="nextPrev(-1)">Previous</button>
					<button type="button" id="submit" onclick="nextPrev(1)">Next</button>
				</div>
			</div>

			<!-- Circles which indicates the steps of the form: -->
			<div style="text-align: center; margin-top: 40px;">
				<span class="step"></span> <span class="step"></span>
			</div>
		</form:form>
	</div>

	<script type="text/javascript">
		var currentTab = 0; // Current tab is set to be the first tab (0)
		showTab(currentTab); // Display the current tab
		function showTab(n) {
			// This function will display the specified tab of the form ...
			var x = document.getElementsByClassName("tab");
			x[n].style.display = "block";
			// ... and fix the Previous/Next buttons:
			if (n == 0) {
				document.getElementById("prevBtn").style.display = "none";
			} else {
				document.getElementById("prevBtn").style.display = "inline";
			}
			if (n == (x.length - 1)) {
				document.getElementById("nextBtn").innerHTML = "none";
			} else {
				document.getElementById("nextBtn").innerHTML = "Next";
			}
			// ... and run a function that displays the correct step indicator:
			fixStepIndicator(n)
		}
		function nextPrev(n) {
			// This function will figure out which tab to display
			var x = document.getElementsByClassName("tab");
			// Exit the function if any field in the current tab is invalid:
			if (n == 1 && !validateForm())
				return false;
			// Hide the current tab:
			x[currentTab].style.display = "none";
			// Increase or decrease the current tab by 1:
			currentTab = currentTab + n;
			// if you have reached the end of the form... :
			if (currentTab >= x.length) {
				//...the form gets submitted:
				document.getElementById("regForm").submit();
				return false;
			}
			// Otherwise, display the correct tab:
			showTab(currentTab);
		}
		function validateForm() {
			// This function deals with validation of the form fields
			var x, y, i, valid = true;
			x = document.getElementsByClassName("tab");
			y = x[currentTab].getElementsByTagName("input");
			// A loop that checks every input field in the current tab:
			for (i = 0; i < y.length; i++) {
				// If a field is empty...
				if (y[i].value == "") {
					// add an "invalid" class to the field:
					y[i].className += " invalid";
					// and set the current valid status to false:
					valid = false;
				}
			}
			// If the valid status is true, mark the step as finished and valid:
			if (valid) {
				document.getElementsByClassName("step")[currentTab].className += " finish";
			}
			return valid; // return the valid status
		}
		function fixStepIndicator(n) {
			// This function removes the "active" class of all steps...
			var i, x = document.getElementsByClassName("step");
			for (i = 0; i < x.length; i++) {
				x[i].className = x[i].className.replace(" active", "");
			}
			//... and adds the "active" class to the current step:
			x[n].className += " active";
		}
	</script>

</body>
</html>
