package com.klu.project.CourseManagementSystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Query;
import com.klu.project.CourseManagementSystem.model.Student;


@Repository
public interface StudentRepository extends JpaRepository<Student, Integer> 
{
	@Query("select s from Student s where s.email=?1 and s.password=?2 ")
	public Student checkStudentLogin(String email,String password);
	

}
