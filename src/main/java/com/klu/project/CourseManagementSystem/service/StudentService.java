package com.klu.project.CourseManagementSystem.service;

import com.klu.project.CourseManagementSystem.model.Student;

public interface StudentService {

	public String studentRegistration(Student student);
	public Student checkStudentLogin(String email,String password);
}
