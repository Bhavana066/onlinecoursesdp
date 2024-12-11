<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home - Course Management System</title>
    <link rel="stylesheet" href="https://cdn.tailwindcss.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f9fafb;
            color: #333;
        }
        .card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }
        .btn-primary {
            background-color: #4f46e5;
            color: white;
            padding: 10px 20px;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }
        .btn-primary:hover {
            background-color: #4338ca;
        }
    </style>
</head>
<body>

    <%@ include file="navbar.jsp" %>

    <div class="relative">
        <img src="https://t3.ftcdn.net/jpg/08/51/97/60/240_F_851976042_41BWGRbNul0SCF7EuTNGEqR5YSjTHhGj.jpg" 
             alt="A person learning online with a laptop" 
             class="w-full h-96 object-cover">
        <div class="absolute inset-0 flex flex-col items-center justify-center space-y-4 bg-black bg-opacity-50">
            <h1 class="text-5xl font-bold text-white">Welcome to CoursEdu!</h1>
            <a href="${pageContext.request.contextPath}/explorecourses" 
               class="btn-primary">
                Explore Courses
            </a>
        </div>
    </div>

    <div class="py-10 text-center px-6">
        <h2 class="text-4xl font-semibold text-gray-800">Why CoursEdu?</h2>
        <p class="mt-4 text-gray-600">We offer a variety of courses tailored to your learning needs.</p>

        <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mt-10">
            <div class="bg-white p-8 rounded shadow-md card">
                <i class="fas fa-chalkboard-teacher text-4xl text-purple-600"></i>
                <h3 class="text-2xl font-bold mt-4">Expert Instructors</h3>
                <p class="text-gray-600 mt-2">Learn from industry professionals and experienced educators.</p>
            </div>
            <div class="bg-white p-8 rounded shadow-md card">
                <i class="fas fa-book-open text-4xl text-purple-600"></i>
                <h3 class="text-2xl font-bold mt-4">Comprehensive Curriculum</h3>
                <p class="text-gray-600 mt-2">Access courses designed to meet your career goals.</p>
            </div>
            <div class="bg-white p-8 rounded shadow-md card">
                <i class="fas fa-users text-4xl text-purple-600"></i>
                <h3 class="text-2xl font-bold mt-4">Community Support</h3>
                <p class="text-gray-600 mt-2">Join a community of learners and gain support from peers.</p>
            </div>
        </div>
    </div>

    <%@ include file="footer.jsp" %>

</body>
</html>
