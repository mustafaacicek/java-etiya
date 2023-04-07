import business.concretes.StudentManager;
import entities.Student;

public class Main {
    public static void main(String[] args) {

        StudentManager studentManager = new StudentManager();
        System.out.println(studentManager.getAll().get(0));
        System.out.println(studentManager.getAll().get(1));
        System.out.println(studentManager.getAll().get(2));
        System.out.println(studentManager.getAll().get(3));
        System.out.println(studentManager.getAll().get(4));



        studentManager.add(new Student("testFname6","testLname6",7,200000000,1));


        studentManager.delete(2);

        studentManager.update(3,new Student("updateFname","updateLname",3,2000000023,2));

        for (Student student : studentManager.getAll()){
            System.out.println("------");

            System.out.println(student);
        }



    }
}