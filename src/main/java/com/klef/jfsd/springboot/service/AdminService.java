package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Issue;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.model.Solution;
import com.klef.jfsd.springboot.model.Student;

public interface AdminService 
{
	public List<Student> viewAllStudents();
	public Admin checkAdminLogin(String uname, String pwd);
	String deletestudent(int eid);
	//image upload &display
	
	public String addProduct(Product product);
	public List<Product> viewAllProducts();
	public Product displayProductById(int pid);
	
	public List<Issue> viewAllIssues();
	
	public String addSolution(Solution sol);

	
}
