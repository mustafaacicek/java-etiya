package business.abstracts;

import entities.Car;

import java.util.List;

public interface CarService {
    List<Car> getAllCar();
    void addCar(Car car);
    void deleteCar(int id);
    Car updateCar(int id);
}