package pasmina

class SavedProductController {

   def saveProduct(){
       println("Inside save product!!")
        def pId = Integer.parseInt(params?.pId)
       println "pId = $pId"
        def uId = Integer.parseInt(params?.uId)
       println "uId = $uId"

       SavedProduct savedProduct = new SavedProduct()

       savedProduct.productId = pId
       savedProduct.userId = uId
       println 'saved!'
       savedProduct.save(failOnError: true)

       render 'Saved'
   }
}
