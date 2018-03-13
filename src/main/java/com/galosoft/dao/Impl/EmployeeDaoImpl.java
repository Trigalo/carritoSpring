package com.galosoft.dao.Impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.galosoft.dao.EmployeeDao;
import com.galosoft.model.Employee;

@Repository
@Transactional
public class EmployeeDaoImpl implements EmployeeDao{
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addEmployee(Employee employee) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(employee);
		session.flush();
		
	}

	@Override
	public Employee getEmployeeById(String id) {
		Session session = sessionFactory.getCurrentSession();
		Employee employee = (Employee) session.get(Employee.class, id);
		session.flush();
		return employee;
	}

	@Override
	public List<Employee> getAllEmployees() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Employee");
		List<Employee> employees = query.list();
		session.flush();
		return employees;
	}

	@Override
	public void deleteEmployee(String id) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(getEmployeeById(id));
		session.flush();
		
	}

	@Override
	public void editEmployee(Employee employee) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(employee);
		session.flush();
	}

}
