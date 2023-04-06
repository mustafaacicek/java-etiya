public class Main {
    public static void main(String[] args) {

        Product product = new Product();
        Product product1 = new Product(2,"laptop2","new",450,6,"beyaz");
        product.setName("Laptop");
        product.setId(1);
        product.setDescription("new laptop");
        product.setPrice(5000);
        product.setStockAmount(1);

        ProductManager productManager = new ProductManager();
        productManager.add(product);
        productManager.add(product1);

        System.out.println(product.getKod());

    }
}