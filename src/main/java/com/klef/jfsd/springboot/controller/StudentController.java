package com.klef.jfsd.springboot.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Issue;
import com.klef.jfsd.springboot.model.Solution;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import com.klef.jfsd.springboot.model.Student;
@Controller
public class StudentController 
{

	 @Autowired
	    private StudentService studentService;

	    @GetMapping("/")
	    public ModelAndView home() {
	        return new ModelAndView("index");
	    }
	    @GetMapping("about")
	    public ModelAndView about() {
	        return new ModelAndView("about");
	    }
	    
	    @GetMapping("index")
	    public ModelAndView index() {
	        return new ModelAndView("index");
	    }
	    
	    @GetMapping("service")
	    public ModelAndView service() {
	        return new ModelAndView("service");
	    }
	    
	    @GetMapping("contact")
	    public ModelAndView contact() {
	        return new ModelAndView("contact");
	    }

	    @GetMapping("studentreg")
	    public ModelAndView empreg() {
	        return new ModelAndView("studentreg");
	    }
	   

	    @PostMapping("insertstudent")
	    public ModelAndView insertvoter(HttpServletRequest request) {
	        String name = request.getParameter("sname");
	        String gender = request.getParameter("sgender");
	        String dob = request.getParameter("sdob");
	      
	        String location = request.getParameter("slocation");
	        String email = request.getParameter("semail");
	        String password = request.getParameter("spwd");
	        String contact = request.getParameter("scontact");

	        Student student = new Student();
	        student.setName(name);
	        student.setGender(gender);
	   
	        student.setDateofbirth(dob);
	        student.setLocation(location);
	        student.setEmail(email);
	        student.setPassword(password);
	        student.setContact(contact);

	        String msg = studentService.studentRegistration(student);

	        return new ModelAndView("regsuccess").addObject("message", msg);
	    }

	    @GetMapping("adminlogin")
	    public ModelAndView adminlogin() {
	        return new ModelAndView("adminlogin");
	    }

	    @GetMapping("studentlogin")
	    public ModelAndView studentlogin() {
	        return new ModelAndView("studentlogin");
	    }

	    @PostMapping("checkStudentlogin")
	    public ModelAndView checkStudentlogin(HttpServletRequest request) {
	        ModelAndView mv = new ModelAndView();
	        
	        String semail = request.getParameter("semail");
	        String spwd = request.getParameter("spwd");

	        Student student = studentService.checkStudentLogin(semail, spwd);
	        
	        if (student != null) {
	            HttpSession session = request.getSession();
	            session.setAttribute("student", student); // "voter" is a session variable
	            
	            mv.setViewName("studenthome");
	        } else {
	            mv.setViewName("studentloginfail");
	            mv.addObject("message", "Login Failed");
	        }
	        return mv;
	    }


	    @GetMapping("studenthome")
	    public ModelAndView studenthome() {
	        return new ModelAndView("studenthome");
	    }

	    @GetMapping("studentlogout")
	    public ModelAndView studentlogout() {
	        return new ModelAndView("studentlogin"); // Consider redirecting to a logout success page
	    }
	    
	    @GetMapping("studentsessionfail")
	    public ModelAndView studentsessionfail() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("studentsessionfail"); 
	        return mv;
	    }
	    
	    @GetMapping("studentprofile")
	    public ModelAndView studentprofile() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("studentprofile"); 
	        return mv;
	    }
	    
	    @GetMapping("updatestudent")
	    public ModelAndView updatestudent() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("updatestudent"); 
	        return mv;
	    }
	    
	    @PostMapping("update")
	    public ModelAndView update(HttpServletRequest request)
	    {
	       int id =Integer.parseInt(request.getParameter("sid"));
	       String name = request.getParameter("sname");
	       String gender = request.getParameter("sgender");
	       String dob = request.getParameter("sdob");
	       
	       String location = request.getParameter("slocation");
	       String email = request.getParameter("semail");
	       String password = request.getParameter("spwd");
	       String contact = request.getParameter("scontact");


	       Student student = new Student();
	       student.setId(id);
	       student.setName(name);
	       student.setGender(gender);
	      
	       student.setDateofbirth(dob);
	       student.setLocation(location);
	       student.setEmail(email);
	       student.setPassword(password);
	       student.setContact(contact);
	       
	       String msg = studentService.updatestudent(student);
	       
	       ModelAndView mv = new ModelAndView("updatesuccess");
	       mv.addObject("message", msg);
	     
	       return mv;

	    }
	    
	    @GetMapping("issueform")
	    public String issueform() {
	    	return "issueform";
	    }
	    
	    @PostMapping("insertissue")
	    public ModelAndView insertissue(HttpServletRequest request) {
	        String username = request.getParameter("susername");
	        String issue = request.getParameter("sissue");
	        String priority = request.getParameter("spriority");
	      
	        String category = request.getParameter("scategory");
	        
	        Issue problem = new Issue();
	        problem.setUsername(username);
	        problem.setIssue(issue);
	   
	        problem.setPriority(priority);
	        problem.setCategory(category);
	       

	        String msg = studentService.issueForm(problem);

	        return new ModelAndView("probsuccess").addObject("message", msg);
	    }
	    
	    @GetMapping("viewcure")
		public ModelAndView viewallcures() 
		{
		    ModelAndView mv = new ModelAndView();
	        List<Solution> curelist = studentService.viewAllCures();
	        mv.setViewName("viewcure");
		    mv.addObject("emplist", curelist);
		    return mv;
		}

	    
}
