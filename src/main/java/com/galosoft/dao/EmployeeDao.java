package com.galosoft.dao;

import java.util.List;

import com.galosoft.model.Employee;

public interface EmployeeDao {
	
	void addEmployee(Employee employee);
	Employee getEmployeeById(String id);
	List<Employee> getAllEmployees();
	void deleteEmployee(String id);
	void editEmployee(Employee employee);

}
