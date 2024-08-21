package com.sbcrud.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.sbcrud.model.Student;
import com.sbcrud.servicei.ServiceI;


@Controller
public class StudentController {
	
	@Autowired
	ServiceI si;
	
	@RequestMapping("/")
	public String homePage()
	{
		return "login";
	}
    
	@RequestMapping("/register")
	public String regPage()
	{
		return "register";
	}
	
	@RequestMapping("/save")
	public String saveStudent(@ModelAttribute Student s) 
	{
		System.out.println(s.getSname());
		System.out.println("In Controller");
		si.saveStudent(s);
		return "login";
	}
	
	@RequestMapping("/loginsucess")
	public String loginSucess(@RequestParam("username")String un,@RequestParam("password")String ps, Model m)
	{
		Student st=si.logincheck(un, ps);
		if(st==null && un.equals("admin") && ps.equals("admin"))
		{
			Iterable<Student>sList=si.getAllStudent();
			m.addAttribute("data",sList);
			return "loginsucess";
		}
		else if(st!=null)
		{
			List<Student> sList = new ArrayList<>();
			sList.add(st);
			m.addAttribute("data", sList);
			return "loginsucess";
		}
		else 
		{
			return "login";
		}
	}
	
	@RequestMapping("/edit")
	public String editStudent(@RequestParam("rollno")int rollno, Model m)
	{
	  Student st= si.editStudent(rollno);
	  m.addAttribute("s",st);
	  return "edit";
	}
	
	@RequestMapping("/update")
	public String updateStudent(@ModelAttribute Student s, Model m)
	{
		si.saveStudent(s);
		Iterable<Student> sList = si.getAllStudent();
		m.addAttribute("data", sList);
		return "loginsucess";
	}
	
    @RequestMapping("/delete")
    public String deleteStudent(@ModelAttribute Student s,Model m)
    {
    	si.deleteStudent(s);
    	Iterable<Student> sList = si.getAllStudent();
		m.addAttribute("data", sList);
    	return "loginsucess";
    }
}
