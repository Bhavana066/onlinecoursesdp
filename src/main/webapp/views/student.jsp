<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body, html {
            height: 100%;
            font-family: Arial, sans-serif;
            background: url(https://t3.ftcdn.net/jpg/08/55/39/10/240_F_855391010_XSiZykGhYslOhnXgZB8iSJ3UnJj4VqX0.jpg) no-repeat center center fixed;
            background-size: cover; /* Make the background image cover the entire viewport */
            background-color: #f0f2f5; /* Fallback background color */
        }
        .login-wrapper {
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: calc(100vh - 80px); /* Adjust based on navbar height */
            padding-top: 20px; /* Slight space between navbar and card */
        }
        .login-container {
            width: 400px; /* Increased width */
            padding: 40px; /* Increased padding */
            border: 1px solid rgba(255, 255, 255, 0.3); /* Lighter border for transparency */
            border-radius: 10px; /* More rounded corners */
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.2); /* Softer shadow for a nicer effect */
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            text-align: center;
        }
        .login-container h2 {
            margin-bottom: 20px;
            color: #333; /* Darker text color for better visibility */
        }
        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 12px; /* Increased padding for inputs */
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px; /* More rounded corners */
        }
        .login-container label {
            display: block; /* Ensures the label takes full width */
            text-align: left; /* Aligns the text to the left */
            margin-bottom: 5px; /* Adds spacing between the label and the input field */
            font-weight: bold; /* Optional: Makes the label text bold for emphasis */
        }
        .button-group input[type="submit"] {
            width: 100%;
            padding: 12px; /* Increased padding for submit button */
            background-color: #8946e8; /* Button color */
            color: white;
            border: none;
            border-radius: 5px; /* More rounded corners */
            cursor: pointer;
            font-weight: bold; /* Bold text for the button */
        }
        .button-group input[type="submit"]:hover {
            background-color: #7321bc; /* Darker shade for hover effect */
        }
    </style>
</head>
<body>
    <!-- Navbar include -->
    <jsp:include page="navbar.jsp" />

    <div class="login-wrapper">
        <div class="login-container">
            <h2><b>Student Login</b></h2>
            <form action="/login/submit" method="post">
                <label>Enter Email</label>
                <input type="text" name="email" placeholder="Email" required><br>
                <label>Enter Password</label>
                <input type="password" name="password" placeholder="Password" required><br>
                <div class="button-group">
                    <input type="submit" value="Login">
                </div>
            </form>
        </div>
    </div>
     <%@ include file="footer.jsp" %>
</body>
</html>

