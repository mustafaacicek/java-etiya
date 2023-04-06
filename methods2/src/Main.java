public class Main {
    public static void main(String[] args) {
        String message = "Bugün hava çok güzel.";
        String newMessage = sehirVer();
        System.out.println(newMessage);
        int number = topla(81,12);
        System.out.println(number);
        int toplam = topla2(1,2,3,523);
        System.out.println(toplam);

    }

    public static void add() {
        System.out.println("eklendi");
    }

    public static void delete() {
        System.out.println("silindi");

    }

    public static void update() {
        System.out.println("güncellendi");
    }

    public static int topla(int number1,int number2) {

        return number1+number2;
    }
    public static int topla2(int... sayilar){
        int toplam =0;
        for (int sayi: sayilar){
            toplam+=sayi;
        }
        return toplam;
    }

    public static String sehirVer() {
        return "ankara";
    }
}