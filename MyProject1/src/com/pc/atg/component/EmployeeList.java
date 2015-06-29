package com.pc.atg.component;

import java.util.ArrayList;
import java.util.List;


public class EmployeeList {
	public EmployeeList(){
		Employee e1=new Employee("1","phool","hri",2344);
		Employee e2=new Employee("1","phool","hri",2344);
		Employee e3=new Employee("1","phool","hri",2344);
		employee.add(e1);
		employee.add(e2);
		employee.add(e3);
		
	}
	List<Employee> employee=new ArrayList<Employee>();

	public List<Employee> getEmployee() {
		return employee;
	}

	public void setEmployee(List<Employee> employee) {
		this.employee = employee;
	}

}
