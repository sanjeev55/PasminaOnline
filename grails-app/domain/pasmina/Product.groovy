package pasmina

class Product {
    int productCode
    String productName
    int sellingPrice
    int availableQuantity
    String productDescription
    int soldQuantity
    int costPrice
    byte[] image
    /*String imageName*/
    static constraints = {

    }
    static mapping ={ image(sqlType:"BLOB") }
}


