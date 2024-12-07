package com.klef.jfsd.springboot.service;


import java.util.List;

import com.klef.jfsd.springboot.model.Issue;
import com.klef.jfsd.springboot.model.Solution;
import com.klef.jfsd.springboot.model.Student;

public interface StudentService 
{
	public String studentRegistration(Student student);
	public Student checkStudentLogin(String email,String password);
	public String updatestudent(Student s);
	public String issueForm(Issue problem);
	
	public List<Solution> viewAllCures();

}
