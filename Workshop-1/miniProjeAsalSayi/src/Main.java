public class Main {
    public static void main(String[] args) {
        int number = 1;
        int remainder = number % 2;

//        System.out.println(remainder);
        boolean isPrime = true;
        if (number < 2) {
            System.out.println("Sayı geçersiz");
        }
        if (number == 1) {
            System.out.println("Asal değildir");
            return;
        }

        for (int i = 2; i < number; i++) {
            if (number % 2 == 0) {
                isPrime = false;
            }
        }
        if (isPrime == true) {
            System.out.println("Asaldır");
        } else {
            System.out.println("Asal değildir");
        }

    }
}