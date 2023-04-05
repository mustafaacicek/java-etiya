import java.util.Locale;

public class Main {
    public static void main(String[] args) {
        String message = "Bugün hava çok güzel.";


        System.out.println(message);

        System.out.println("Eleman sayısı : " + message.length());
        System.out.println("5.eleman :" + message.charAt(8));
        System.out.println(message.concat(" Yaşasın!"));
        System.out.println(message.startsWith("A"));
        System.out.println(message.endsWith("."));
        char[] characters = new char[15];
        message.getChars(0, 15, characters, 0);
        System.out.println(characters);

        System.out.println(message.indexOf('a'));
        System.out.println(message.lastIndexOf("e"));

        String newMessage = message.replace(" ","-");
        System.out.println(newMessage);

        System.out.println(message.substring(2,5));

        for (String word : message.split(" ")){
            System.out.println(word);
        }

        System.out.println(message.toLowerCase());
        System.out.println(message.toUpperCase());
        System.out.println(message.trim());


    }
}