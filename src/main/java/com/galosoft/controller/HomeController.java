package com.galosoft.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.galosoft.dao.EmployeeDao;
import com.galosoft.model.Employee;

@Controller
public class HomeController {
	private Path path;
	
	@Autowired
	private EmployeeDao employeeDao;
	
	@RequestMapping("/")
	public String home() {
		return "inicio";
	}
	
	@RequestMapping("/angular")
	public String testAngular() {
		return "testAngular";
	}
	
	@RequestMapping("/employeeList")
	public String employeeList(Model model) {
		List<Employee> employees = employeeDao.getAllEmployees();
		model.addAttribute("employees", employees);
		return "employeeList";
	}
	
	
	@RequestMapping("/employeeList/employeeDetail/{employeeId}")
	public String employeeDetail(@PathVariable String employeeId, Model model) throws IOException {
		Employee employee = employeeDao.getEmployeeById(employeeId);
		model.addAttribute(employee);
		return "employeeDetail";
	}
	
	@RequestMapping("/admin")
	public String admin() {
		return "admin";
	}
	
	@RequestMapping("/admin/employeeInventory")
	public String employeeInventory(Model model) {
		List<Employee> employees = employeeDao.getAllEmployees();
		model.addAttribute("employees", employees);
		return "employeeInventory";
	}
	
	@RequestMapping("/admin/employeeInventory/addEmployee")
	public String addEmployee(Model model) {
		Employee employee = new Employee();
		employee.setEmployeeLastName("Garcia Lopez");
		employee.setEmployeeAddress("Urues Norte 50");
		employee.setEmployeePhone("58275253");
		employee.setEmployeeEmail("internick10@gmail.com");
		
		model.addAttribute("employee", employee);
		return "addEmployee";
	}
	
	@RequestMapping(value="/admin/employeeInventory/addEmployee", method = RequestMethod.POST)
	public String addEmployeePost(@Valid @ModelAttribute("employee") Employee employee, BindingResult result,
			HttpServletRequest request) {
		
		if(result.hasErrors()) {
			return "addEmployee";
		}
	
		employeeDao.addEmployee(employee);
		
		MultipartFile employeeImage = employee.getEmployeeImage();
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		path = Paths.get(rootDirectory +"//WEB-INF//resources//images//"+employee.getEmployeeId()+".png");
		
		System.out.println(path);
		
		if(employeeImage != null && !employeeImage.isEmpty()) {
	    	
			try {
				employeeImage.transferTo(new File(path.toString()));
			}catch(Exception e) {
				e.printStackTrace();
				throw new RuntimeException("Employee Image saved failed");
			}
		}
		
		return "redirect:/admin/employeeInventory";
	}
	
	@RequestMapping("/admin/employeeInventory/deleteEmployee/{id}")
	public String deleteEmployee(@PathVariable String id, Model model) {
		employeeDao.deleteEmployee(id);
		return "redirect:/admin/employeeInventory";
		
	}
	
	@RequestMapping("/admin/employeeInventory/editEmployee/{id}")
	public String editEmployee(@PathVariable("id") String id, Model model) {
		Employee employee = employeeDao.getEmployeeById(id);
		model.addAttribute(employee);
		return "editEmployee";
	}
	
	@RequestMapping(value="/admin/employeeInventory/editEmployee", method = RequestMethod.POST)
	public String editEmployee(@ModelAttribute("employee") Employee employee, Model model,HttpServletRequest request) {
		
		MultipartFile employeeImage = employee.getEmployeeImage();
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		path = Paths.get(rootDirectory +"//WEB-INF//resources//images//"+employee.getEmployeeId()+".png");
		
		System.out.println(path);
		
		if(employeeImage != null && !employeeImage.isEmpty()) {
	    	
			try {
				employeeImage.transferTo(new File(path.toString()));
			}catch(Exception e) {
				e.printStackTrace();
				throw new RuntimeException("Employee Image saved failed");
			}
		}
		employeeDao.editEmployee(employee);
		return "redirect:/admin/employeeInventory";
	}
	
	
}





