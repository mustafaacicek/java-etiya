package business.abstracts;

import entities.Student;

import java.util.List;

public interface StudentService {
    void add(Student student);
    void delete(int studentNo);
    void update(int id, Student student);
    List<Student> getAll();
}
