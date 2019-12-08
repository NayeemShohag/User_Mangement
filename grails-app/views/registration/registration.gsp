<%--
  Created by IntelliJ IDEA.
  User: Shohag
  Date: 11/15/2019
  Time: 1:48 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/js/bootstrap.min.js" integrity="sha384-3qaqj0lc6sV/qpzrc1N5DC6i1VRn/HyX4qdPaiEFbn54VjQBEU341pvjz7Dv3n6P" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/css/bootstrap.min.css" integrity="sha384-SI27wrMjH3ZZ89r4o+fGIJtnzkAnFs3E4qz9DIYioCQ5l9Rd/7UAa8DHcaL8jkWt" crossorigin="anonymous">

<asset:stylesheet src="custom.css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<head>
    <title>Registration</title>

</head>

<body>

<div class="row justify-content-sm-center m-3">
    <asset:image src="logo.png"/>
</div>
<h3 class="text-center">Registration Panel</h3>
<div class="container pt-3">
    <div class="row justify-content-sm-center">
        <div class="col-sm-6 col-md-8">

            <div class="card border-info text-center">

                <div class="card-body">
                    <form class="form-signin" controller="registration" action="register" method="post" id="regform">
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">First Name</label>
                        <div class="col-sm-10">
                            <input type="text" name="firstName"  class="form-control" placeholder="First Name" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Last Name</label>
                        <div class="col-sm-10">
                            <input  type="text" name="lastName" class="form-control"  placeholder="Last Name" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label  class="col-sm-2 col-form-label">Address</label>
                        <div class="col-sm-10">
                            <textarea type="text"  name="address" class="form-control no-resize" placeholder="Address"></textarea>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label  class="col-sm-2 col-form-label">Phone</label>
                        <div class="col-sm-10">
                            <input type="text" name="phone" class="form-control" placeholder="Phone" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label  class="col-sm-2 col-form-label">Email</label>
                        <div class="col-sm-10">
                            <input type="email" name="email" id="email" class="form-control" placeholder="Email"required>
                            <span id="mailfield"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label  class="col-sm-2 col-form-label">Birthdate</label>
                        <div class="col-sm-10">
                            <input type="date" name="birthdate" class="form-control" placeholder="Birthdate" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label  class="col-sm-2 col-form-label">Password</label>
                        <div class="col-sm-10">
                            <input type="password" name="password" class="form-control" placeholder="Password" required>
                        </div>
                    </div>

                        <button class="btn btn-sm btn-primary" type="submit" name="register" id="register">Register</button>
                        <button class="btn btn-sm btn-secondary" type="button" onclick="location.href = '/login/Login';">Cancel</button>


                    </form>
                </div>
            </div>

        </div>
    </div>
</div>

</body>
<asset:javascript src="registration.js"/>
</html>