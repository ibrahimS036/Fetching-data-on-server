<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update User Details</title>
<style>
/* General styling for the body */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f9;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    color: #333;
}

/* Styling for the container */
.container {
    background-color: white;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 500px;
}

/* Heading styling */
h1 {
    text-align: center;
    font-size: 24px;
    color: #4CAF50;
}

/* Form label styling */
label {
    display: block;
    margin-bottom: 8px;
    font-size: 16px;
    color: #555;
}

/* Input field styling */
input[type="text"] {
    width: 100%;
    padding: 12px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    box-sizing: border-box; /* Ensures padding doesn't affect width */
}

/* Submit button styling */
input[type="submit"] {
    width: 100%;
    padding: 12px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 4px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

/* Adding space between fields */
.form-group {
    margin-bottom: 20px;
}

/* Message styling */
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
    <div class="container">
        <h1>Update User Details</h1>

        <!-- Display success or error message -->
        <%
        String message = (String) request.getAttribute("message");
        if (message != null) {
        %>
        <div class="message"><%= message %></div>
        <%
        }
        %>

        <!-- Update User Form -->
        <form action="updateUser" method="POST">
            <div class="form-group">
                <label for="userid">User ID:</label>
                <input type="text" id="userid" name="UserId" required>
            </div>

            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="UserName" required>
            </div>

            <div class="form-group">
                <label for="usercity">User City:</label>
                <input type="text" id="usercity" name="UserCity" required>
            </div>

            <div class="form-group">
                <label for="userdesignation">User Designation:</label>
                <input type="text" id="userdesignation" name="UserDesignation" required>
            </div>

            <div class="form-group">
                <input type="submit" value="Update">
            </div>
        </form>
    </div>
</body>
</html>
