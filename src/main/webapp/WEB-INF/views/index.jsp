<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Registration</title>
<link rel="stylesheet" type="text/css" href="css/reg.css"/>
</head>

<body>
<c:if test="${error == true}">
	<b class="error">Invalid login or password.</b>
</c:if>

	<div style="text-align: center">
		<form:form method="POST" modelAttribute="user" action="/hello">
		<c:if test="${param.error != null}">        
			<p>
				Invalid username and password.
			</p>
		</c:if>
<br>
<br>
				<h1 class = "header">Sign up for TravelSmart</h1>
				
			<div class="description">
				<p>Plan your world travels with your friends, right here.</p>
			</div>
				<p>
					<form:label path="firstname">Firstname</form:label>
					<br>
					<form:input path="firstname" id="email" placeholder="Eddie" />
					<form:errors path="firstname" />
				</p>
				<p>
					<form:label path="lastname">Lastname</form:label>
					<br>
					<form:input path="lastname" id="email" placeholder="Ed"/>
					<form:errors path="lastname" />
				</p>
				<p>
					<form:label path="email">Email</form:label>
					<br>
					<form:input path="email" id="email" placeholder="ed@eddie.com"/>
					<form:errors path="email" />
				</p>
				<p>
					<form:label path="username">Username</form:label>
					<br>
					<form:input path="username" id="email" placeholder="Eddy123"/>
					<form:errors path="username" />
				</p>
				<br>
				<div class="heading2">
					<p>Okay! Now choose a password...</p>
				</div>
				<input type="password" class="button" id="email" name="password"
					placeholder="Password"> <input type="password"
					class="button" id="email" name="passwordConfirm"
					placeholder="Re-type Password"><br>
				<br>
				<br>
					<form:label path="group"><p>Choose your group...</p></form:label>
					<input type="text"name="groupName" id="email" placeholder="Barcelona"/>
					<form:errors path="group" />
					<br>
					<p>And choose your role...</p>
						<select name="roleName" id="email">
						<option value="TRIP LEADER">TRIP LEADER</option>
						<option value="MEMBER">MEMBER</option>
					</select>
					<br>
					<br>
					<br>
				<input type="submit" class="button" id="submit" value="SIGN UP">
				<br>
				<br>
				<br>
				
		</form:form>
	</div>
</body>
</html>
