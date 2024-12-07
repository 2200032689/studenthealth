package com.klef.jfsd.springboot.controller;

import java.io.IOException;
import java.util.List;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Issue;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.model.Solution;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;
import java.sql.Blob;
import java.sql.SQLException;
@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    // Display the admin home page
    @GetMapping("adminhome")
    public ModelAndView adminHome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("adminhome");
        return mv;
    }

    // View all voters
    @GetMapping("viewallstudents")
	public ModelAndView viewallstudents() 
	{
	    ModelAndView mv = new ModelAndView();
        List<Student> studentlist = adminService.viewAllStudents();
        mv.setViewName("viewallstudents");
	    mv.addObject("emplist", studentlist);
	    return mv;
	}
    // Check admin login credentials
    @PostMapping("checkadminlogin")
    public ModelAndView checkAdminLogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        
        String username = request.getParameter("auname");
        String password = request.getParameter("apwd");
        
        Admin admin = adminService.checkAdminLogin(username, password);
        
        if (admin != null) {
            mv.setViewName("adminhome"); // Redirect to admin home on successful login
        } else {
            mv.setViewName("adminloginfail");
            mv.addObject("message", "Login Failed");
        }
        return mv;
    }

    // Delete a voter
    @GetMapping("deletestudent")
    public ModelAndView deleteStudent() {
        ModelAndView mv = new ModelAndView();
        List<Student> studentList = adminService.viewAllStudents();
        mv.setViewName("deletestudent");
        mv.addObject("emplist", studentList);
        return mv;
    }
    
    @GetMapping("delete")
	public String  delete(@RequestParam("id") int eid)
	{
		adminService.deletestudent(eid);
		return "redirect:/deletestudent";
	}

    // Admin logout
    @GetMapping("adminlogout")
    public ModelAndView adminLogout() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("adminlogin");
        return mv;
    }
    
    @GetMapping("addproduct")
    public String addproduct() {
    	return "addproduct";
    }
    @PostMapping("insertproduct")
    public ModelAndView insertproduct(HttpServletRequest request, @RequestParam("pimage") MultipartFile file) throws IOException, SerialException, SQLException {
    	
    	String name= request.getParameter("pname");
    	double cost= Double.parseDouble(request.getParameter("pcost"));
       	String description= request.getParameter("pdescription");
       	
       	byte[] bytes = file.getBytes();
       	
       	Blob blob= new javax.sql.rowset.serial.SerialBlob(bytes);
       	
       	Product p = new Product();
       	p.setCost(cost);
       	p.setDescription(description);
       	p.setName(name);
       	p.setImage(blob);
       	
       	String message = adminService.addProduct(p);
       	
       	ModelAndView mv = new ModelAndView();
       	mv.setViewName("productsuccess");
       	mv.addObject("mesage", message);
       	
       	return mv;
       	
       	
    }
    @GetMapping("viewallproducts")
    public ModelAndView viewallproducts() {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("viewallproducts");
    	List<Product> products = adminService.viewAllProducts();
    	mv.addObject("products", products);
    	return mv;
    }
    
    @GetMapping("displayproductimage")
    public ResponseEntity<byte[]> displayproductimage(@RequestParam int id) throws SQLException {
    	
    	Product product = adminService.displayProductById(id);
    	
    	byte[] imagesbytes = null;
    	imagesbytes = product.getImage().getBytes(1, (int) product.getImage().length());
    	
    	return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imagesbytes);
    	
    }
    
    @GetMapping("viewissues")
	public ModelAndView viewallissues() 
	{
	    ModelAndView mv = new ModelAndView();
        List<Issue> issuelist = adminService.viewAllIssues();
        mv.setViewName("viewissues");
	    mv.addObject("emplist", issuelist);
	    return mv;
	}
    
    @GetMapping("addsolution")
    public String addsolution() {
    	return "addsolution";
    }
    
    @PostMapping("insertsolution")
    public ModelAndView insertissue(HttpServletRequest request) {
        String studentname = request.getParameter("sname");
        String problem = request.getParameter("sproblem");
        String cure = request.getParameter("scure");
      
        String referenceLink = request.getParameter("sreferenceLink");
        
        Solution sol = new Solution();
        sol.setStudentname(studentname);
        sol.setProblem(problem);
   
        sol.setCure(cure);
        sol.setReferenceLink(referenceLink);
       

        String msg = adminService.addSolution(sol);

        return new ModelAndView("solsuccess").addObject("message", msg);
    }
}

