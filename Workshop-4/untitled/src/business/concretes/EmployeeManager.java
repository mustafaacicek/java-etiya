package business.concretes;

import business.abstracts.EmployeeService;
import dataAccess.abstracts.IEmployeeDao;
import entities.Employee;

import java.util.List;

public class EmployeeManager implements EmployeeService {
    private final IEmployeeDao employeeDao;

    public EmployeeManager(IEmployeeDao employeeDao) {
        this.employeeDao = employeeDao;
    }

    @Override
    public List<Employee> getAllEmployee() {
        return employeeDao.getAllEmployee();
    }

    @Override
    public void addEmployee(Employee employee) {
        if (employee.getNationalityId()==null){
            System.out.println("kimlik numarası boş bırakılamaz");
        }
        employeeDao.addEmployee(employee);

    }

    @Override
    public void deleteEmployee(int id) {
        employeeDao.deleteEmployee(id);
    }

    @Override
    public Employee updateEmployee(int id) {
        return employeeDao.updateEmployee(id);
    }
}

