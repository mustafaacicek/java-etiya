package dataAccess.concretes;

import dataAccess.abstracts.ICarDao;
import entities.Car;

import java.util.ArrayList;
import java.util.List;

public class CarDao implements ICarDao {
    List<Car> cars = new ArrayList<>();
    @Override
    public List<Car> getAllCar() {
        return cars;
    }

    @Override
    public void addCar(Car car) {
        cars.add(car);
    }

    @Override
    public void deleteCar(int car) {
        cars.remove(car);
    }

    @Override
    public Car updateCar(int id) {
        return cars.stream().filter(car -> car.getId()==id).findFirst().orElseThrow();
    }
}