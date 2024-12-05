<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Data</title>
<style>
body {
    font-family: Arial, sans-serif;
    margin: 20px;
}

h1 {
    text-align: center;
    margin-bottom: 20px;
}

form {
    width: 300px;
    margin: 0 auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 8px;
    background-color: #f9f9f9;
}

label {
    display: block;
    margin: 8px 0 5px;
}

input[type="text"] {
    width: 100%;
    padding: 8px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

input[type="submit"] {
    width: 100%;
    padding: 10px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

/* Styles for the message */
.message {
    margin: 20px auto;
    padding: 10px;
    text-align: center;
    width: 80%;
    max-width: 400px;
    font-size: 16px;
    font-weight: bold;
    color: #155724; /* Dark green text */
    background-color: #d4edda; /* Light green background */
    border: 1px solid #c3e6cb; /* Green border */
    border-radius: 5px;
}
</style>
</head>
<body>
    <h1>Insert Data</h1>

    <!-- Check if the message attribute exists -->
    <% 
        String message = (String) request.getAttribute("message");
        if (message != null) { 
    %>
        <div class="message"><%= message %></div>
    <% 
        } 
    %>

    <!-- Form to collect data -->
    <form action="runinsert" method="POST">
        <!-- New User ID Field -->
        <label for="userid">User ID:</label>
        <input type="text" id="userid" name="UserId" required>

        <label for="username">User Name:</label>
        <input type="text" id="username" name="UserName" required>

        <label for="usercity">User City:</label>
        <input type="text" id="usercity" name="UserCity" required>

        <label for="userdesignation">User Designation:</label>
        <input type="text" id="userdesignation" name="UserDesignation" required>

        <input type="submit" value="Submit">
    </form>
</body>
</html>
