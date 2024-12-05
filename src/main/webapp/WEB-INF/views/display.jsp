<%@page import="mvc.ibrahim.crud.entities.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Booking Management</title>
<style>
*, *::before, *::after {
	box-sizing: border-box;
}

body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

.container {
	max-width: 1000px;
	margin: 20px auto;
	padding: 20px;
	background: white;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
	color: #333;
	margin-bottom: 20px;
}

table {
	width: 100%;
	margin: 20px 0;
	border-collapse: collapse;
}

th, td {
	padding: 10px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #f2f2f2;
}

.feature-title {
	font-weight: bold;
	color: #333;
}

@media ( max-width : 600px) {
	.container {
		padding: 15px;
	}
	table {
		font-size: 14px;
	}
}
</style>
</head>
<body>
	<div class="container">

		<p>Here are the current Data:</p>

		<!-- Table displaying booking details -->
		<table>
			<thead>
				<tr>
					<th>User Id</th>
					<th>User Name</th>
					<th>User City</th>
					<th>User Designation</th>
				</tr>
			</thead>
			<tbody>
				<%
				// Retrieve the list of data from the model
				List<User> allUsers = (List<User>) request.getAttribute("users");

				// Loop through the bookings and display them in table rows
				for (User data : allUsers) {
				%>
				<tr>
					<td><%=data.getUserId()%></td>
					<td><%=data.getUserName()%></td>
					<td><%=data.getUserCity()%></td>
					<td><%=data.getUserDesignation()%></td>

				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>