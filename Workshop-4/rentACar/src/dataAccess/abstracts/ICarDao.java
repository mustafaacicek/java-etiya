package dataAccess.abstracts;

import entities.Car;

import java.util.List;

public interface ICarDao {
    List<Car> getAllCar();
    void addCar(Car car);
    void deleteCar(int car);
    Car updateCar(int id);
}
