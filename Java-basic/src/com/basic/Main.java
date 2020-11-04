package com.basic;

public class Main {

    public static void main(String[] args) {
	// write your code here
        Employee empOne = new Employee("111");
        empOne.empAge(26);
        empOne.empDesignation("dev");
        empOne.empSalary(1000);
        empOne.printEmployee();
    }
}
