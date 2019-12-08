<%--
  Created by IntelliJ IDEA.
  User: Shohag
  Date: 11/16/2019
  Time: 2:30 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<asset:javascript src="jquery-3.3.1.min.js"/>
<asset:link rel="stylesheet" href="bootstrap.css"/>

<asset:javascript src="bootstrap.js"/>


<head>
    <title><g:layoutTitle default="Grails"/></title>

    <g:layoutHead/>
    <style>
    .container {
        margin: 100px;
    }

    body {
        padding-top: 65px;
    }
    </style>
</head>

<body>

<nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Bit Mascot</a>

    <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
            <a class="nav-link" href='/user/logout'>Sign out</a>
        </li>
    </ul>
</nav>


<div class="container-fluid">
        <div class="container">
            <g:layoutBody/>
        </div>
    </div>
</div>


</body>
</html>