package pasmina

class SavedProductController {

   def saveProduct(){

        def pId = Integer.parseInt(params?.pId)
        def uId = Integer.parseInt(params?.uId)
        def itemSaved

       def alreadySaved = SavedProduct?.findByProductIdAndUserId(pId,uId)

        if(alreadySaved){
            itemSaved = false
            render itemSaved
       }
        else {
           SavedProduct savedProduct = new SavedProduct()

           savedProduct.productId = pId
           savedProduct.userId = uId

            savedProduct.save(failOnError: true)
            itemSaved = true
            render itemSaved
        }
   }
}
