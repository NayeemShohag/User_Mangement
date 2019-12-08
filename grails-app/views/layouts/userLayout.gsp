<%--
  Created by IntelliJ IDEA.
  User: Shohag
  Date: 11/15/2019
  Time: 10:52 PM
--%>


<html>
<asset:javascript src="jquery-3.3.1.min.js"/>
<asset:link rel="stylesheet" href="bootstrap.css"/>
<asset:javascript src="bootstrap.js"/>
<asset:stylesheet src="custom.css"/>

<head>
    <title><g:layoutTitle default="Grails"/></title>

    <g:layoutHead/>

</head>

<body>

<nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Bit Mascot</a>

    <div class="btn-group">
        <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                aria-expanded="false">
            ${user.firstName}  ${user.lastName}
        </button>

        <div class="dropdown-menu dropdown-menu-right">
            <button class="dropdown-item" type="button"
                    onclick="location.href = '/user/change_password';">Change Password</button>
            <button class="dropdown-item" type="button" onclick="location.href = '/user/logout';">Log Out</button>

        </div>
    </div>

</nav>


<div class="container-fluid mt-5 ">
    <div class="row row-sidebar ">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar ">
            <div class="sidebar-sticky">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="border border-dark mb-2" href="/user/profile">Profile Page</a>
                    </li>
                    <li class="nav-item">
                        <a class="border border-dark" href="/user/change_password">Change Password</a>
                    </li>

                </ul>
            </div>
        </nav>

        <div class="container w-100 ">
            <g:layoutBody/>
        </div>
    </div>
</div>

</body>
</html>