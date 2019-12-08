<%--
  Created by IntelliJ IDEA.
  User: Shohag
  Date: 11/15/2019
  Time: 11:06 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>


<title>User Profile</title>
<meta name="layout" content="userLayout"/>



    <div class="row text-center border border-dark">
        <div class="col">
            <h2>User Profile</h2>
        </div>
    </div>

    <div class="row mt-5 ">

        <div class="container pt-3">
            <div class="row justify-content-sm-center">
                <div class="col-sm-6 col-md-7">

                    <div class="text-left">

                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-4">First Name</div>

                                <div class="col-sm-4">:</div>

                                <div class="col-sm-4">${user.firstName}</div>
                            </div>

                            <div class="row">
                                <div class="col-sm-4">Last Name</div>

                                <div class="col-sm-4">:</div>

                                <div class="col-sm-4">${user.lastName}</div>
                            </div>

                            <div class="row">
                                <div class="col-sm-4">Phone</div>

                                <div class="col-sm-4">:</div>

                                <div class="col-sm-4">${user.phone}</div>
                            </div>

                            <div class="row">
                                <div class="col-sm-4">Email</div>

                                <div class="col-sm-4">:</div>

                                <div class="col-sm-4">${user.email}</div>
                            </div>

                            <div class="row">
                                <div class="col-sm-4">Birth Date</div>

                                <div class="col-sm-4">:</div>

                                <div class="col-sm-4">${user.birthdate}</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

</div>



