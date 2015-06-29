package com.pc.atg.component;


public class Employee{
	
private String id;
private String name;
private String city;
private double salary;

public Employee(String id, String name, String city, double salary) {	
	this.id = id;
	this.name = name;
	this.city = city;
	this.salary = salary;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public double getSalary() {
	return salary;
}
public Employee() {
	
}
public void setSalary(double salary) {
	this.salary = salary;
}
@Override
public String toString() {
	return "Employee [id=" + id + ", name=" + name + ", city=" + city
			+ ", salary=" + salary + "]";
}
}
