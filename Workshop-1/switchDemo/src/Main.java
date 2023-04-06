public class Main {
    public static void main(String[] args) {
        char grade = 'Z';

        switch (grade) {
            case 'A':
                System.out.println("Mükemmel");
                break;
            case 'B':
                System.out.println("Çok iyi");
                break;
            case 'C':
                System.out.println("iyi");
                break;
            case 'D':
                System.out.println("Orta");
                break;
            case 'F':
                System.out.println("kötü");
                break;
            default:
                System.out.println("Geçersiz not");

        }

    }
}