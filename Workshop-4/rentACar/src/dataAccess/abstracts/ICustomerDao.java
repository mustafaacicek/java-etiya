package dataAccess.abstracts;

import entities.Customer;

import java.util.List;

public interface ICustomerDao {
    List<Customer> getAllCustomer();

    void addCustomer(Customer customer);

    void deleteCustomer(int id);

    Customer updateCustomer(int id);
}
