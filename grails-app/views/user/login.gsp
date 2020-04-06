<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 6/21/2019
  Time: 9:51 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Mount Everest Import Export</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}">
    <g:javascript library="jquery"/>
    <r:layoutResources/>

</head>
<body>

<div class="login-page" >
    <div class="form">
        <g:form class="register-form" method="post" controller="user" action="testAction">
            <input type="hidden" name="page" value="register">
            <input type="text" name="name" placeholder="Enter your full name"><br>
            <input type="password" name="password" placeholder="Password">
            <input type="password" name="rpassword" placeholder="Re-Enter Password">

            <input type="text" name="email" placeholder="Email Address">
            <input type="submit" value="Register">
            <p class="message">Already registered? <a href="#">Sign In</a>  </p>
        </g:form>
        <g:form class="login-form" method="post" controller="user" action="dashBoard">
            <input type="hidden" name="page" value="Login">

            <input type="text" name="email" placeholder="Email" id="email">
            <input type="password" name="password" placeholder="Password" id="password">
            <input type="submit" value="Login">
            <p class="message">Not registered? <a href="#">Create an account</a></p>
            <p class="message"><g:link controller="user" action="forgetPassword">Forget Password</g:link></p>
        </g:form>

    </div>
</div>
<g:javascript library="jquery"/>
<script  src="js/index.js"></script>

<r:layoutResources/>
</body>
</html>