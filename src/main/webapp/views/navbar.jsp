<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Navbar</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet" />
    <style>
        body {
            font-family: 'Poppins', sans-serif;
        }
        /* Dropdown Menu Styles */
        .dropdown {
            position: relative;
            display: inline-block;
        }
        .dropdown-menu {
            display: none;
            position: absolute;
            background-color: #ffffff;
            border: 1px solid #e5e7eb;
            border-radius: 0.5rem;
            min-width: 200px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.1);
            z-index: 1000;
            margin-top: 8px;
        }
        .dropdown-menu a {
            display: block;
            padding: 0.75rem 1rem;
            color: #4b5563;
            text-decoration: none;
            font-size: 0.9rem;
            transition: background-color 0.2s ease;
        }
        .dropdown-menu a:hover {
            background-color: #f3f4f6;
            color: #1f2937;
        }
        .dropdown:hover .dropdown-menu {
            display: block;
        }
    </style>
</head>
<body class="bg-gray-50">
    <header class="bg-white shadow-md">
        <div class="container mx-auto flex items-center justify-between py-4 px-6">
            <!-- Logo Section -->
            <div class="flex items-center">
                <img src="https://tse2.mm.bing.net/th?id=OIP.1BjGggRpgdSz71Ar35wIJQHaH0&pid=Api&P=0&h=180.jpeg" alt="Logo" class="h-12 w-12" />
                <span class="ml-3 text-3xl font-semibold text-gray-800">CoursEdu</span>
            </div>
            
            <!-- Navigation Links -->
            <nav class="hidden md:flex space-x-6">
                <a href="<%= request.getContextPath() %>/home" class="text-gray-700 hover:text-gray-900">Home</a>
                <a href="<%= request.getContextPath() %>/about" class="text-gray-700 hover:text-gray-900">About Us</a>
                
                <!-- Dropdown Menus -->
                <div class="dropdown">
                    <a href="#" class="text-gray-700 hover:text-gray-900">Internship</a>
                    <div class="dropdown-menu">
                        <a href="<%= request.getContextPath() %>/internships/product-management">Product Management Course</a>
                        <a href="<%= request.getContextPath() %>/internships/data-science">Data Science Course</a>
                        <a href="<%= request.getContextPath() %>/internships/hr-management">Human Resource Management</a>
                    </div>
                </div>
                <div class="dropdown">
                    <a href="#" class="text-gray-700 hover:text-gray-900">Free Courses</a>
                    <div class="dropdown-menu">
                        <a href="<%= request.getContextPath() %>/free-courses/course-1">Project Management Overview</a>
                        <a href="<%= request.getContextPath() %>/free-courses/course-2">Financial Modelling</a>
                        <a href="<%= request.getContextPath() %>/free-courses/course-3">Data Science Fundamentals</a>
                        <a href="<%= request.getContextPath() %>/free-courses/course-4">Machine Learning Basics</a>
                    </div>
                </div>
            </nav>
            
            <!-- Login/Signup Section -->
            <div class="flex items-center space-x-4">
                <div class="dropdown">
                    <a href="#" class="text-gray-700 border border-gray-300 rounded px-4 py-2 hover:bg-gray-100">Log in</a>
                    <div class="dropdown-menu">
                        <a href="<%= request.getContextPath() %>/studentlogin">Student Login</a>
                        <a href="<%= request.getContextPath() %>/educatorlogin">Educator Login</a>
                        <a href="<%= request.getContextPath() %>/adminlogin">Admin Login</a>
                    </div>
                </div>
                <a href="<%= request.getContextPath() %>/signup" class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700">Sign up</a>
            </div>
        </div>
    </header>
</body>
</html>
