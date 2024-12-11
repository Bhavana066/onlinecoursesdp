package com.klu.project.CourseManagementSystem.service;

import java.util.List;

import com.klu.project.CourseManagementSystem.model.Admin;
import com.klu.project.CourseManagementSystem.model.Student;

public interface AdminService {
	public List<Student> viewAllStudents();
    public Admin checkAdminLogin(String uname,String pwd);
}
