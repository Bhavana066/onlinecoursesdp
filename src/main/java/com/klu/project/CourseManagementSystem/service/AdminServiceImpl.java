package com.klu.project.CourseManagementSystem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.project.CourseManagementSystem.model.Admin;
import com.klu.project.CourseManagementSystem.model.Student;
import com.klu.project.CourseManagementSystem.repository.AdminRepository;
import com.klu.project.CourseManagementSystem.repository.StudentRepository;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private StudentRepository studentRepository;
	@Autowired
	private AdminRepository adminRepository;

	@Override
	public List<Student> viewAllStudents() {
		return studentRepository.findAll();
	}

	@Override
	public Admin checkAdminLogin(String uname, String pwd) 
	{
		return adminRepository.checkAdminLogin(uname, pwd);
		
	}

}
