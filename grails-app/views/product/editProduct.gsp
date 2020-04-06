<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2/10/2018
  Time: 7:49 PM
--%>

<!DOCTYPE html>
<html>
<g:javascript library="jquery"/>
<r:layoutResources/>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Edit Product</title>


    <link rel="stylesheet" href="${resource(dir: 'css', file: 'form-basic.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'demo.css')}">
    <g:javascript>
        function validateForm() {
            var x = document.forms["editProduct"]["productName"].value;
            if (x == "") {
                alert("Product Name must be filled out");
                return false;
            }
            var d = document.forms["editProduct"]["productCode"].value;
            if (d == "") {
                alert("Product Code must be filled out");
                return false;
            }
            var y = document.forms["editProduct"]["costPrice"].value;
            if (y == "") {
                alert("Cost Price must be filled out");
                return false;
            }
            var z = document.forms["editProduct"]["sellingPrice"].value;
            if (y == "") {
                alert("Selling Price must be filled out");
                return false;
            }
            var a = document.forms["editProduct"]["availableQuantity"].value;
            if (a == "") {
                alert("Available Quantity must be filled out");
                return false;
            }
            var b = document.forms["editProduct"]["soldQuantity"].value;
            if (b == "") {
                alert("Sold Quantity must be filled out");
                return false;
            }
            var c = document.forms["editProduct"]["productDescription"].value;
            if (c == "") {
                alert("Product Description must be filled out");
                return false;
            }
        }
</g:javascript>

</head>
<body style="background-image:url('${resource(dir: "images", file: "")}')">


<div class="main-content">

<!-- You only need this form and the form-basic.css -->

    <g:form name= "editProduct" class="form-basic" method="post" onsubmit="return validateForm()" controller="product" action="updateProduct" enctype='multipart/form-data'>
        <div class="form-title-row">
            <h1>Edit Product</h1>
        </div>

        <input type="hidden" name="id" value="${p.id}">
        <div class="form-row">
            <label>
                <span>Product's Name</span>
                <input type="text" name="productName" value="${p.productName}">
            </label>
        </div>
        <div class="form-row">
            <label>
                <span>Product's Code</span>
                <input type="text" name="productCode" value="${p.productCode}">
            </label>
        </div>

        <div class="form-row">
            <label>
                <span>Product's Image</span>
                <img src="${createLink(controller: 'product', action: 'showImage', params: [id:p?.id])}" height="220px" width="150px">
                <input class="inputFiles" type="file" name="image" multiple="multiple" accept="image/*" />
            </label>
        </div>

        <div class="form-row">
            <label>
                <span>Cost Price</span>
                <input type="text" name="costPrice" value="${p.costPrice}">
            </label>
        </div>

        <div class="form-row">
        <label>
            <span>Selling Price</span>
            <input type="text" name="sellingPrice" value="${p.sellingPrice}">
        </label>
        </div>

        <div class="form-row">
            <label>
                <span>Available Quantity</span>
                <input type="text" name="availableQuantity" value="${p.availableQuantity}">
            </label>
        </div>

        <div class="form-row">
            <label>
                <span>Sold Qunatity</span>
                <input type="text" name="soldQuantity" value="${p.soldQuantity}">
            </label>
        </div>

        <div class="form-row">
            <label>
                <span>Product Description</span>
                <input type="text" name="productDescription" value="${p.productDescription}">
            </label>
        </div>

        <div class="form-row">
            <button type="submit">Update</button>
        </div>

    </g:form>


</div>

</body>

</html>