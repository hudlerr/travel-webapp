
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
     "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/invite.css"/>
<title>Travel Smart</title>
</head>
<body>
	<div style="text-align: center">
		<h1 class="header">Invite Friends To Your Travels</h1>
		<p>Enter your friends email and your group name to add them to
			your planning page.</p>
		<form:form action="/invitenext" method="POST">
				<tr>
					<td><p>To:</p></td>
					<td><input type="text" name="recipient" size="65" id="email" placeholder="Ed@Eddie.com"/></td>
				</tr>
				<tr>
					<td><p>Subject:</p></td>
					<td><input type="text" name="subject" size="65" id="email" placeholder="Planning our trip"/></td>
				</tr>
				<tr>
					<td><p>Group Name:</p></td>
					<td><input type="text" name="group" size="65" id="email" placeholder="Paris"/></td>
				</tr>
				<br>
				<br>
				<br>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="Send E-mail" id="submit" /></td>
				</tr>
		</form:form>
	</div>
</body>
</html>
