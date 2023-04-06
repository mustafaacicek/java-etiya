public class Main {
    public static void main(String[] args) {
        String student1 = "name1";
        String student2 = "name2";
        String student3 = "name3";
        String student4 = "name4";

        System.out.println(student1);
        System.out.println(student2);
        System.out.println(student3);
        System.out.println(student4);

        System.out.println("--------------------------------------");

        String[] students = new String[4];
        students[0]="name1";
        students[1]="name2";
        students[2]="name3";
        students[3]="name4";

        for (int i=0; i<students.length;i++){
            System.out.println(students[i]);
        }

        System.out.println("---------------------------");

        for (String student: students){
            System.out.println(student);
        }
    }
}