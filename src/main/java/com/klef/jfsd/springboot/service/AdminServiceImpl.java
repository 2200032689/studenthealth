package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Issue;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.model.Solution;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.IssueRepository;
import com.klef.jfsd.springboot.repository.ProductRepository;
import com.klef.jfsd.springboot.repository.SolutionRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private StudentRepository studentRepository;
	
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private SolutionRepository solutionRepository;
	
	@Autowired
	private IssueRepository issueRepository;

	@Override
	public List<Student> viewAllStudents() {
		
		return studentRepository.findAll();
	}

	@Override
	public Admin checkAdminLogin(String uname, String pwd) {
		
		return adminRepository.checkAdminLogin(uname, pwd);
	}
	
	@Override
    public String deletestudent(int eid) {
    	studentRepository.deleteById(eid);
		return "Deleted Successfully";
    }
	
	@Override
	public String addProduct(Product product) {
		productRepository.save(product);
		return "Product Added Successfully";
	}
	
	
	@Override
	public List <Product> viewAllProducts() {
		return productRepository.findAll();
	}

	@Override
	public Product displayProductById(int pid) {
		
		return productRepository.findById(pid).get();
	}

	@Override
	public List<Issue> viewAllIssues() {
		// TODO Auto-generated method stub
		return issueRepository.findAll();
	}

	@Override
	public String addSolution(Solution sol) {
		solutionRepository.save(sol);
		return "Solution Posted Successfully";
	}

	
	
	

}
