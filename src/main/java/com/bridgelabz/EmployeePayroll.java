package com.bridgelabz;

public class EmployeePayroll {
    public int id;
    public String name;
    public double salary;
    public String start;
    public String gender;

    public EmployeePayroll(int id, String name,String gender, double salary,String start) {
        this.id = id;
        this.name = name;
        this.salary = salary;
        this.start =start;
        this.gender=gender;
    }

    @Override
    public String toString() {
        return "Employee PayRoll Data [ID="+id + ", Name = " +name+", Gender = " + gender + ", Salary = " + salary +", start = " + start +"]";
    }
}
