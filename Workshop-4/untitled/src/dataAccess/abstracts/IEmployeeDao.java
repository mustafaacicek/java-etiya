package dataAccess.abstracts;

import entities.Employee;

import java.util.List;

public interface IEmployeeDao {
    List<Employee> getAllEmployee();
    void addEmployee(Employee employee);
    void deleteEmployee(int id);

    Employee updateEmployee(int id);
}
