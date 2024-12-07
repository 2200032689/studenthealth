package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Issue;
import com.klef.jfsd.springboot.model.Solution;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.IssueRepository;
import com.klef.jfsd.springboot.repository.SolutionRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService
{
	@Autowired
	private StudentRepository studentRepository;
	@Autowired
	private IssueRepository issueRepository;
	
	@Autowired
	private SolutionRepository solutionRepository;

	@Override
	public String studentRegistration(Student student) {
		studentRepository.save(student);
		return "Student Registered Successfully";
	}

	@Override
	public Student checkStudentLogin(String email, String password) {
		// TODO Auto-generated method stub
		return studentRepository.checkStudentLogin(email,password);
	}
	
	@Override
	public String updatestudent(Student s) {
		Student student = studentRepository.findById(s.getId()).get();
		
		student.setContact(s.getContact());
		student.setDateofbirth(s.getDateofbirth());
		student.setEmail(s.getEmail());
		s.setGender(s.getGender());
		student.setLocation(s.getLocation());
		
		student.setName(s.getName());
		student.setPassword(s.getPassword());
		
		studentRepository.save(student);
		return "Student Updated Successfully";
	}

	@Override
	public String issueForm(Issue problem) {
		// TODO Auto-generated method stub
		issueRepository.save(problem);
		return "Student Registered Successfully";
	}

	@Override
	public List<Solution> viewAllCures() {
		// TODO Auto-generated method stub
		return solutionRepository.findAll();
	}

}
