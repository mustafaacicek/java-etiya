package business.concretes;

import business.abstracts.CarService;
import dataAccess.abstracts.ICarDao;
import entities.Car;

import java.util.List;

public class CarManager implements CarService {
    private final ICarDao carDao;

    public CarManager(ICarDao iCarDao) {
        this.carDao = iCarDao;
    }

    @Override
    public List<Car> getAllCar() {
        return carDao.getAllCar();
    }

    @Override
    public void addCar(Car car) {
        if (car.getBrand().isEmpty()){
            System.out.println("araba markası boş bırakılamaz");
        }
        carDao.addCar(car);

    }

    @Override
    public void deleteCar(int id) {
        carDao.deleteCar(id);

    }

    @Override
    public Car updateCar(int id) {
        return carDao.updateCar(id);
    }
}
