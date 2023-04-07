package business.concretes;

import business.abstracts.StudentService;
import entities.Student;

import java.util.ArrayList;
import java.util.List;

public class StudentManager implements StudentService {

    private List<Student> students;

    public StudentManager() {
        students = new ArrayList<>();
        students.add(new Student("testfirstname", "testlastname", 1, 100000000, 1));
        students.add(new Student("testfirstname1", "testlastname1", 2, 100000001, 1));
        students.add(new Student("testfirstname2", "testlastname2", 3, 100000002, 1));
        students.add(new Student("testfirstname3", "testlastname3", 4, 100000003, 1));
        students.add(new Student("testfirstname4", "testlastname4", 5, 100000004, 1));
    }

    @Override
    public void add(Student student) {
        for (Student student1 : students) {
            if (student1.getStudentNo() == student.getStudentNo()) {
                System.out.println("Öğrenci kayıtlı");
                return;
            }
        }
        students.add(student);
    }

    @Override
    public void delete(int studentNo) {
        for (Student student : students) {
            if (student.getStudentNo() == studentNo) {
                students.remove(student);
                return;
            }
        }
    }

    @Override
    public void update(int id, Student student) {
        for (Student student1 : students) {
            if (student.getStudentNo() == id) {
                student1.setStudentNo(student.getStudentNo());
                student1.setFirstName(student.getFirstName());
                student1.setLastName(student.getLastName());
                student1.setNationalityId(student.getNationalityId());
                student1.setGroup(student.getGroup());
                return;
            }
        }

    }

    @Override
    public List<Student> getAll() {

        return students;
    }
}
