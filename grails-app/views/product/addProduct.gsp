<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2/10/2018
  Time: 10:28 PM
--%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Add Product</title>


    <link rel="stylesheet" href="${resource(dir: 'css', file: 'form-basic.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'demo.css')}">

</head>
<body style="background-image:url('${resource(dir: "images", file: "")}')">


<div class="main-content">

<!-- You only need this form and the form-basic.css -->

    <g:form class="form-basic" method="post" controller="product" action="addProduct" enctype='multipart/form-data' >
        <div class="form-title-row">
            <h1>Add Product</h1>
        </div>


        <div class="form-row">
            <label>
                <span>Product's Name</span>
                <input type="text" name="productName">
            </label>
        </div>
        <div class="form-row">
            <label>
                <span>Product's Code</span>
                <input type="text" name="productCode">
            </label>
        </div>
        <div class="form-row">
            <label>
                <span>Product's Image</span>
                <input class="inputFiles" type="file" name="image" multiple="multiple" accept="image/*" />
            </label>
        </div>
        <div class="form-row">
            <label>
                <span>Cost Price</span>
                <input type="text" name="costPrice">
            </label>
        </div>
        <div class="form-row">
            <label>
                <span>Selling Price</span>
                <input type="text" name="sellingPrice">
            </label>
        </div>
        <div class="form-row">
            <label>
                <span>Available Quantity</span>
                <input type="text" name="availableQuantity">
            </label>
        </div>
        <div class="form-row">
            <label>
                <span>Sold Quantity</span>
                <input type="text" name="soldQuantity">
            </label>
        </div>
        <div class="form-row">
            <label>
                <span>Product's Description</span>
                <input type="text" name="productDescription">
            </label>
        </div>


      %{--  <div class="form-row">
            <label>
                <span>Faculty</span>
                <select name="faculty">
                    <option value="BCT">BCT</option>
                    <option value="BEX">BEX</option>
                </select>
            </label>
        </div>
--}%
        <div class="form-row">
            <button type="submit">Add</button>
        </div>


    </g:form>

    <div class="form-basic">
        <g:link controller="user" action="backDashboard"
                style="text-decoration: none"><button>Home</button></g:link>


    </div>

</div>

</body>

</html>