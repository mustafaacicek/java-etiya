package business.concretes;

import business.abstracts.CustomerService;
import dataAccess.abstracts.ICustomerDao;
import entities.Customer;

import java.util.List;

public class CustomerManager implements CustomerService {
    private final ICustomerDao customerDao;

    public CustomerManager(ICustomerDao customerDao) {
        this.customerDao = customerDao;
    }

    @Override
    public List<Customer> getAllCustomer() {
        return customerDao.getAllCustomer();
    }

    @Override
    public void addCustomer(Customer customer) {
        if (customer.getNationalityId()==null) {
            System.out.println("Kimlik boş bırakılamaz");
        }
        customerDao.addCustomer(customer);
    }

    @Override
    public void deleteCustomer(int id) {
        customerDao.deleteCustomer(id);
    }

    @Override
    public Customer updateCustomer(int id) {
        return null;
    }
}


