package dataAccess.concretes;

import dataAccess.abstracts.IEmployeeDao;
import entities.Employee;

import java.util.ArrayList;
import java.util.List;

public class EmployeeDao implements IEmployeeDao {
    List<Employee> employees = new ArrayList<>();

    @Override
    public List<Employee> getAllEmployee() {
        return employees;
    }

    @Override
    public void addEmployee(Employee employee) {
        employees.add(employee);

    }

    @Override
    public void deleteEmployee(int id) {
        employees.remove(id);
    }

    @Override
    public Employee updateEmployee(int id) {
        return employees.stream().filter(employee -> employee.getId() == id).findFirst().orElseThrow();
    }
}


