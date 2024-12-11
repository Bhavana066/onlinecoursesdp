package com.klu.project.CourseManagementSystem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.project.CourseManagementSystem.model.Student;
import com.klu.project.CourseManagementSystem.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService{
	@Autowired
	private StudentRepository studentRepository;

	@Override
	public String studentRegistration(Student student) {
		studentRepository.save(student);
		return "Student registered successfully";
		
		
	}

	@Override
	public Student checkStudentLogin(String email, String password)
	{
	return studentRepository.checkStudentLogin(email, password);
	}

}
