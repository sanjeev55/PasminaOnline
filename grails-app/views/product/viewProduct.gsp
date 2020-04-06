<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2/10/2018
  Time: 8:01 PM
--%>

<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>Product's List</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'styleTable.css')}" type="text/css">
    %{-- <link rel="stylesheet" href="css/style.css">--}%
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <g:javascript  src="indexTable.js"></g:javascript>
    <script src="https://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'styleButton.css')}" type="text/css">
</head>

<body style="background-color: #76b852">
<section>
    <!--for demo wrap-->
    <h1>Product's List</h1>
    <div class="tbl-header">
        <table cellpadding="0" cellspacing="0" border="0">
            <thead>

            <tr>
                <th>Product Name</th>
                <th>Product Code</th>
                <th>Selling Price</th>
                <th>Cost Price</th>
                <th>Available Quantity</th>
                <th>Sold Quantity</th>
                <th>Description</th>
                <th>Edit</th>
                <th>Delete</th>


            </tr>

            </thead>
        </table>
    </div>
    <div class="tbl-content">
        <table cellpadding="0" cellspacing="0" border="0">
            <tbody>
            <g:each in="${p}" var="i">
                <tr>
                    <th>${i.productName}</th>
                    <th>${i.productCode}</th>
                    <th>${i.sellingPrice}</th>
                    <th>${i.costPrice}</th>
                    <th>${i.availableQuantity}</th>
                    <th>${i.soldQuantity}</th>
                    <th>${i.productDescription}</th>
                <g:if test="${u.role=='user'}">
                    <th><g:link controller="product" action="editProduct" id="${i.id}"> Edit</g:link></th>
                    <th><g:link controller="product" action="deleteProduct" id="${i.id}"> Delete</g:link></th>
                </g:if>
                </tr>

            </g:each>
            </tbody>
        </table>

    </div>

    <g:link controller="user" action="backDashboard">
        <section>
            <button id="js-trigger-overlay1" type="button">Home</button>
        </section>
    </g:link>
    <g:if test="${u.role=='user'}">
        <g:link controller="product" action="viewAddProduct">
            <section>
                <button id="js-trigger-overlay1" type="button">Add More</button>
            </section>
        </g:link>
    </g:if>
</section>
</body>
</html>
