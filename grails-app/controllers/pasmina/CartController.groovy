package pasmina

class CartController {

    def addToCart() {

        def pId = Integer.parseInt(params?.pId)
        def uId = Integer.parseInt(params?.uId)

        def product = Product?.findById(pId)
        def productPrice = product?.sellingPrice
        def availableQuantity = product?.availableQuantity


        def alreadyExist = Cart?.findByProductIdAndUserId(pId, uId)
        def totalQuantity = alreadyExist?.totalQuantity
        def totalPrice = alreadyExist?.totalPrice
        def itemAdded
        if (availableQuantity > 0) {

            availableQuantity = availableQuantity-1
            product.availableQuantity = availableQuantity

            product.save(failOnError: true)

            itemAdded = true
        if (totalQuantity > 0) {

            totalQuantity = totalQuantity + 1
            totalPrice = totalPrice + productPrice

            alreadyExist.totalQuantity = totalQuantity
            alreadyExist.totalPrice = totalPrice
            alreadyExist.totalQuantity = totalQuantity
            alreadyExist.totalPrice = totalPrice

            alreadyExist.save(failOnError: true)

            render itemAdded
        } else {

            Cart cart = new Cart()

            cart.productId = pId
            cart.userId = uId
            cart.totalPrice = productPrice
            cart.totalQuantity = 1
            println 'added!'
            cart.save(failOnError: true)

            render itemAdded
        }
    }
        else{
            itemAdded = false
            render itemAdded
        }
    }
}
