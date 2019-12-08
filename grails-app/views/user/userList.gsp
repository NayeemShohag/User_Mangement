
<%--
  Created by IntelliJ IDEA.
  User: Shohag
  Date: 11/16/2019
  Time: 2:40 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Admin</title>
<meta name="layout" content="adminLayout"/>



    <div class="row text-left border-bottom border-dark">
        <div class="col-sm-8">
            <h2>User List</h2>
        </div>
        <div class="col-sm-4 ">
            <div class="border border-dark mt-2">
                <input class="w-100 " type="search" placeholder="Search.." id="search">
            </div>


            <br>
        </div>
    </div>




<div class="row">
    <div class="table-responsive">
    <table class="table table-striped ">
        <thead class="table-dark">
        <tr>
            <th scope="col">Name </th>
            <th scope="col">Age </th>
            <th scope="col">Email</th>
            <th scope="col">Phone</th>
        </tr>
        </thead>
        <tbody id="myTable">
        <g:each in="${users}" var="user">
            <tr>
                <td> ${user.firstName}  ${user.lastName}</td>
                <td> ${user.age}</td>
                <td> ${user.email}</td>
                <td> ${user.phone}</td>
            </tr>
        </g:each>


        </tbody>
    </table>
    </div>
</div>

<asset:javascript src="admin.js"/>