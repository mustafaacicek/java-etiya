package business.abstracts;

import entities.Employee;

import java.util.List;

public interface EmployeeService {
    List<Employee> getAllEmployee();
    void addEmployee(Employee employee);
    void deleteEmployee(int id);
    Employee updateEmployee(int id);
}
