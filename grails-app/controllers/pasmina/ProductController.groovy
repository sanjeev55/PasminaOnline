package pasmina

import org.springframework.web.multipart.commons.CommonsMultipartFile


class ProductController {

    def viewAddProduct() {
        render(view: "addProduct")
    }

    def addProduct(){

        def productName = params.productName
        def productCode = params.productCode
        def sellingPrice = params.sellingPrice
        def costPrice = params.costPrice
        def availableQuantity = params.availableQuantity
        def soldQuantity = params.soldQuantity
        def productDescription = params.productDescription
        CommonsMultipartFile image = params.list("image")?.getAt(0)

        if(productName == "" || productCode == "" || sellingPrice == "" || costPrice =="" || availableQuantity =="" || soldQuantity == ""
        || productDescription == "" || image ==""){
            redirect(action: "viewAddProduct")
        }
        else{
            Product product = new Product()
            product.productName = productName
            product.productCode = Integer.parseInt(productCode)
            product.sellingPrice = Integer.parseInt(sellingPrice)
            product.costPrice = Integer.parseInt(costPrice)
            product.availableQuantity = Integer.parseInt(availableQuantity)
            product.soldQuantity = Integer.parseInt(soldQuantity)
            product.productDescription = productDescription
            product.image = image?.bytes

            product.save(failOnError: true)
            redirect(action: "viewAddProduct")
        }

    }

    def viewProduct(){
        def product = Product.findAll()
        def user=session.user
        render(view: "viewProduct", model: [p:product, u:user])
    }
    def showImage(){
        def id = params?.id
        def product = Product.findById(id)

        byte[] image = product.image
        response.outputStream<<image
    }


    def editProduct(){
        def id = Integer.parseInt(params.id)
        def product = Product.findById(id)
        render(view: 'editProduct', model: [p:product])
    }

    def updateProduct(){
        def productName = params.productName
        def productCode = params.productCode
        def sellingPrice = params.sellingPrice
        def costPrice = params.costPrice
        def availableQuantity = params.availableQuantity
        def soldQuantity = params.soldQuantity
        def productDescription = params.productDescription
        CommonsMultipartFile image = params?.list("image")?.getAt(0)

        if(productName == "" || productCode == "" || sellingPrice == "" || costPrice =="" || availableQuantity =="" || soldQuantity == ""
                || productDescription == ""){
            redirect(action: "viewAddProduct")
        }
        else{
            def product = Product.findById(params?.id)
            product.productName = productName
            product.productCode = Integer.parseInt(productCode)
            product.sellingPrice = Integer.parseInt(sellingPrice)
            product.costPrice = Integer.parseInt(costPrice)
            product.availableQuantity = Integer.parseInt(availableQuantity)
            product.soldQuantity = Integer.parseInt(soldQuantity)
            product.productDescription = productDescription
            if(!image.isEmpty()) {
                println("inside if")
                product.image = image?.bytes
            }

            product.save(failOnError: true)
            redirect(action: "viewProduct")
        }
    }

    def deleteProduct(){
        def id = params?.id

        def product = Product.findById(id)

        product.delete(flush: true)

        redirect(action: 'viewProduct')

    }
}
