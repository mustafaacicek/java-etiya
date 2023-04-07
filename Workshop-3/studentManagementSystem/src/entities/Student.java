package entities;

public class Student {
    private String firstName;
    private String lastName;
    private int studentNo;
    private long nationalityId;
    private int group;


    public Student(String firstName, String lastName, int studentNo, long nationalityId, int group) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.studentNo = studentNo;
        this.nationalityId = nationalityId;
        this.group = group;
    }


    public Student() {
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public int getStudentNo() {
        return studentNo;
    }

    public void setStudentNo(int studentNo) {
        this.studentNo = studentNo;
    }

    public long getNationalityId() {
        return nationalityId;
    }

    public void setNationalityId(long nationalityId) {
        this.nationalityId = nationalityId;
    }

    public int getGroup() {
        return group;
    }

    public void setGroup(int group) {
        this.group = group;
    }

    @Override
    public String toString() {
        return "Student{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", studentNo=" + studentNo +
                ", nationalityId=" + nationalityId +
                ", group=" + group +
                '}';
    }
}
