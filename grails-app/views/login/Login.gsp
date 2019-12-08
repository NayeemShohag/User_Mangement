<%--
  Created by IntelliJ IDEA.
  User: Shohag
  Date: 11/15/2019
  Time: 1:05 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/js/bootstrap.min.js" integrity="sha384-3qaqj0lc6sV/qpzrc1N5DC6i1VRn/HyX4qdPaiEFbn54VjQBEU341pvjz7Dv3n6P" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/css/bootstrap.min.css" integrity="sha384-SI27wrMjH3ZZ89r4o+fGIJtnzkAnFs3E4qz9DIYioCQ5l9Rd/7UAa8DHcaL8jkWt" crossorigin="anonymous">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<head>
    <title>Log In</title>


</head>

<body >


<div class="row justify-content-sm-center m-3">
    <asset:image src="logo.png"/>
</div>
<h2 class="text-center">Login Panel</h2>
<div class="container pt-3">
    <div class="row justify-content-sm-center">
        <div class="col-sm-6 col-md-4">

            <div class="card border-info text-center">

                <div class="card-body">
%{--                    <img src="../../assets/images/pa.jpg" />--}%


                    <form class="form-signin" controller="login" action="Login" method="post" id="frmlogin">
                        <h5>Email Address</h5>
                        <input  type="email" name="email" id="email"  class="form-control mb-2" placeholder="Email" required autofocus>
                        <h5>Password</h5>
                        <input type="password" name="password" id="password" class="form-control mb-2" placeholder="Password" required>
                        <div class="mb-2" id="wrong"></div>
                        <button class="btn btn-lg btn-primary mr-1" type="submit" name="Login" id="login">Login</button>
                        <button class="btn btn-lg btn-secondary" type="button" name="clear" id="clear" >Clear</button>

                        <h6 class="text-center m-4 ">Are You New Here?<span class="p-1"><a href="/registration/index" class="html-editor-align-right">Register Now</a></span></h6>

                    </form>
                </div>
            </div>

        </div>
    </div>
</div>

</body>

<asset:javascript src="login.js"/>

</html>