package com.klu.project.CourseManagementSystem;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klu.project.CourseManagementSystem.model.Admin;
import com.klu.project.CourseManagementSystem.model.Student;
import com.klu.project.CourseManagementSystem.service.AdminService;
import com.klu.project.CourseManagementSystem.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;

import java.util.ArrayList;

import java.util.List;

@Controller
public class Controller1 {
	@Autowired
	private AdminService adminService;
	@Autowired
	private StudentService studentService;

    // List to hold reviews
    private static final List<Review> reviews = new ArrayList<>();

    @GetMapping("/home")
    public String home() {
        return "home";
    }

    @GetMapping("/")
    public String home2() {
        return "home";
    }

    @GetMapping("/signup")
    public String signup() {
        return "Signup";
    }

    @GetMapping("/studentlogin")
    public String studentLogin() {
        return "student";
    }

    @GetMapping("/educatorlogin")
    public String educatorLogin() {
        return "educatorlogin";
    }
    @GetMapping("/fullstack")
    public String fullstack() {
    	return "fullstack";
    }
    @GetMapping("/internships/data-science")
    public String datascience() {
    	return "datascience";
    }
    
    @GetMapping("/internships/human-resource-management")
    public String humanresource() {
    	return "humanresource";
    }
    @GetMapping("/internships/digital-marketing")
    public String digitalmarketing() {
    	return "interndigitalmarketing";
    }
    
    @GetMapping("/internships/ui-ux-design")
    public String uiux() {
    	return "uiux";
    }
    
  
    @GetMapping("/internships/product-management")
    public String productmanagement() {
    	return "productmanagement";
    }
      
    @GetMapping("/internships/supply-chain-logistics")
    public String supplychain() {
    	return "supplychain";
    }
    
    @GetMapping("/free-courses/course-1")
    public String freecourse1() {
    	return "freecourse1";
    }
    
    @GetMapping("/free-courses/course-2")
    public String freecourse2() {
    	return "freecourse2";
    }
    
    @GetMapping("/free-courses/course-3")
    public String freecourse3() {
    	return "freecourse3";
    }
    
    @GetMapping("/free-courses/course-4")
    public String freecourse4() {
    	return "freecourse4";
    }

    @GetMapping("/free-courses/course-5")
    public String freecourse5() {
    	return "freecourse5";
    }
    
    @GetMapping("/free-courses/course-6")
    public String freecourse6() {
    	return "freecourse6";
    }
    
    @GetMapping("/free-courses/course-7")
    public String freecourse7() {
    	return "freecourse7";
    }
    
    @GetMapping("/free-courses/course-8")
    public String freecourse8() {
    	return "freecourse8";
    }
    
    @GetMapping("/adminlogin")
    public ModelAndView adminLogin() {
    	ModelAndView mv=new ModelAndView();
    	mv.setViewName("Adminlogin");
        return mv;
    }
    @PostMapping("checkadminlogin")
    public ModelAndView checkadminlogin(HttpServletRequest request)
    {
    	ModelAndView mv=new ModelAndView();
    	String auname=request.getParameter("auname");
    	String apwd=request.getParameter("apwd");
    	
    	Admin admin=adminService.checkAdminLogin(auname,apwd);
    	if(admin!=null)
    	{
    		mv.setViewName("adminhome");
    	}
    	else
    	{
    		mv.setViewName("adminloginfail");
    		mv.addObject("message","Login Failed");
    	}
    	return mv;
    }
    
    @GetMapping("studentreg")
    public ModelAndView studentreg()
    {
    	ModelAndView mv=new ModelAndView();
    	mv.setViewName("studentreg");
    	return mv;
    }
    
    @PostMapping("insertstudent")
    public ModelAndView insertstudent(HttpServletRequest request)
    {
    	String name=request.getParameter("name");
    	String email=request.getParameter("email");
    	String password=request.getParameter("password");
    	
    	Student student=new Student();
    	student.setName(name);
    	student.setEmail(email);
    	student.setPassword(password);
    	
    	String message=studentService.studentRegistration(student);
    	ModelAndView mv= new ModelAndView();
    	mv.setViewName("regsuccess");
    	mv.addObject("message",message);
    	return mv;
    }
    

    @PostMapping("/signup/submit")
    public String handleSignup(@RequestParam("name") String fullName,
                               @RequestParam("email") String email,
                               @RequestParam("password") String password,
                               Model model) {
        boolean signupSuccess = true;

        if (signupSuccess) {
            return "student";
        } else {
            model.addAttribute("errorMessage", "Signup failed. Please try again.");
            return "signup";
        }
    }

    @PostMapping("/login/submit")
    public String handleLogin() {
        // Directly redirect to home page without authentication
        return "redirect:/home";
    }

    @GetMapping("/about")
    public String about() {
        return "About";
    }

    @GetMapping("/explorecourses")
    public String exploreCourses() {
        return "explorecourses";
    }

    @GetMapping("/webdevdetails")
    public String webDevDetails(@RequestParam(required = false) String courseName, Model model) {
        model.addAttribute("reviews", reviews); // Pass reviews to the view
        model.addAttribute("courseName", courseName); // Pass courseName to the view
        return "webdevdetails";
    }

    @GetMapping("/dspython")
    public String dsPython() {
        return "dspython";
    }

    @GetMapping("/digitalmarketing")
    public String digitalMarketing() {
        return "digitalmarketing";
    }

    @GetMapping("/review")
    public String showReviewPage(@RequestParam("courseName") String courseName, Model model) {
        model.addAttribute("courseName", courseName);
        return "review";
    }
    

    @PostMapping("/coursemanagementsystem/addReview")
    public String addReview(@RequestParam String courseName,
                            @RequestParam String studentName,
                            @RequestParam String review,
                            @RequestParam int rating,
                            Model model) {
        // Create and add the new review
        reviews.add(new Review(courseName, studentName, review, rating));

        
        return "redirect:/webdevdetails?courseName=" + courseName;
    }
    
    
    // Inner class to define Review structure
    public static class Review {
        private final String courseName;
        private final String studentName;
        private final String review;
        private final int rating;

        public Review(String courseName, String studentName, String review, int rating) {
            this.courseName = courseName;
            this.studentName = studentName;
            this.review = review;
            this.rating = rating;
        }

        // Getters
        public String getCourseName() {
            return courseName;
        }

        public String getStudentName() {
            return studentName;
        }

        public String getReview() {
            return review;
        }

        public int getRating() {
            return rating;
        }
    }
  
}
