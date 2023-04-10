package dataAccess.concretes;

import dataAccess.abstracts.ICustomerDao;
import entities.Customer;

import java.util.ArrayList;
import java.util.List;

public class CustomerDao implements ICustomerDao {
    List<Customer> customers = new ArrayList<>();

    @Override
    public List<Customer> getAllCustomer() {
        return customers;
    }

    @Override
    public void addCustomer(Customer customer) {
        customers.add(customer);
    }

    @Override
    public void deleteCustomer(int id) {
        customers.remove(id);
    }

    @Override
    public Customer updateCustomer(int id) {
        return customers.stream().filter(customer -> customer.getId() == id).findFirst().orElseThrow();
    }


}


