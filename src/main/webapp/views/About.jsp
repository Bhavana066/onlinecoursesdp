<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Online Course Management System</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&family=Roboto:wght@300;500&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            background-color: #f9fafb;
        }
        .hero-section {
            background: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), url('https://source.unsplash.com/1600x900/?education,learning') center/cover no-repeat;
            min-height: 100vh;
        }
        .card {
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }
        .btn-primary {
            background-color: #4f46e5;
            color: #ffffff;
            padding: 0.75rem 1.5rem;
            border-radius: 0.375rem;
            transition: background-color 0.3s;
        }
        .btn-primary:hover {
            background-color: #4338ca;
        }
        .icon-links a {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }
    </style>
</head>
<body>

<jsp:include page="navbar.jsp" />

<div class="hero-section text-white flex items-center justify-center">
 
    <div class="container mx-auto text-center px-6 lg:px-20">
        <h1 class="text-5xl font-bold mb-4">About CoursEdu</h1>
        <p class="text-lg font-light mb-6">
            Empowering education with an innovative Course Management System.
        </p>
    </div>
</div>

<div class="container mx-auto my-12 p-8 bg-white rounded-lg shadow-md">
    <h2 class="text-3xl font-bold mb-6 text-blue-700">Our Vision</h2>
    <p class="text-gray-700 mb-6 leading-relaxed">
        At CoursEdu, we believe in transforming the learning experience through technology. Our Course Management System aims to bridge the gap between educators and learners, making education accessible, efficient, and engaging for everyone.
    </p>

    <h2 class="text-2xl font-bold mb-4 text-blue-700">Core Features</h2>
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        <div class="card bg-gray-50 p-6 rounded-lg shadow-lg">
            <h3 class="text-xl font-semibold text-blue-600">Easy Enrollment</h3>
            <p class="text-gray-600 mt-2">Sign up for courses in just a few clicks with our streamlined enrollment process.</p>
        </div>
        <div class="card bg-gray-50 p-6 rounded-lg shadow-lg">
            <h3 class="text-xl font-semibold text-blue-600">Performance Tracking</h3>
            <p class="text-gray-600 mt-2">Stay updated with student progress using intuitive performance dashboards.</p>
        </div>
        <div class="card bg-gray-50 p-6 rounded-lg shadow-lg">
            <h3 class="text-xl font-semibold text-blue-600">Seamless Management</h3>
            <p class="text-gray-600 mt-2">Manage your courses and interactions with a user-friendly interface.</p>
        </div>
    </div>

    <h2 class="text-2xl font-bold mt-8 mb-4 text-blue-700">Get Connected</h2>
    <p class="text-gray-700 mb-6">
        Have suggestions or want to collaborate? Reach out to us and help make learning better for everyone.
    </p>
    <div class="text-center">
        <a href="<%= request.getContextPath() %>/home" class="btn-primary">Back to Home</a>
    </div>

    <div class="text-center mt-8">
        <p class="text-lg font-semibold mb-4">Follow Us On</p>
        <div class="flex justify-center space-x-6 icon-links">
            <a href="https://facebook.com" target="_blank" class="text-blue-600 hover:text-blue-800">
                <i class="fab fa-facebook fa-2x"></i> Facebook
            </a>
            <a href="https://twitter.com" target="_blank" class="text-blue-400 hover:text-blue-600">
                <i class="fab fa-twitter fa-2x"></i> Twitter
            </a>
            <a href="https://instagram.com" target="_blank" class="text-pink-500 hover:text-pink-700">
                <i class="fab fa-instagram fa-2x"></i> Instagram
            </a>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>

</body>
</html>

