import business.abstracts.CarService;
import business.abstracts.CustomerService;
import business.abstracts.EmployeeService;
import business.concretes.CarManager;
import business.concretes.CustomerManager;
import business.concretes.EmployeeManager;
import dataAccess.concretes.CarDao;
import dataAccess.concretes.CustomerDao;
import dataAccess.concretes.EmployeeDao;
import entities.Car;
import entities.Customer;
import entities.Employee;

public class Main {
    public static void main(String[] args) {
        CarDao carDao = new CarDao();
        CustomerDao customerDao = new CustomerDao();
        EmployeeDao employeeDao = new EmployeeDao();

        CustomerService customerService = new CustomerManager(customerDao);
        EmployeeService employeeService = new EmployeeManager(employeeDao);
        CarService carService = new CarManager(carDao);

        Car car1 = new Car(1, "mercedes", "benz");
        Employee employee1 = new Employee(1, "firstname", "lastname", "100000", "500000", 5);
        Customer customer1 = new Customer(1, "customertest", "customertest", "5000000", "5200000", "testadress");

        customerService.addCustomer(customer1);
        employeeService.addEmployee(employee1);
        carService.addCar(car1);

        for (Employee employee : employeeService.getAllEmployee()) {
            System.out.println("çalışan ad soyad : " + employee.getFirstName() + "-" + employee.getLastName());

            for (Customer customer : customerService.getAllCustomer()) {
                System.out.println("müşteri ad soyad : " + customer.getFirstName() + " " + customer.getLastName());
            }
            for (Car car : carService.getAllCar()) {
                System.out.println("arabalar : " + car.getBrand() + " " + car.getModel());
            }


        }
    }
}