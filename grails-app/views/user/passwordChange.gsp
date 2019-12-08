<%--
  Created by IntelliJ IDEA.
  User: Shohag
  Date: 11/16/2019
  Time: 2:11 AM
--%>


<%@ page contentType="text/html;charset=UTF-8" %>




<title>User Profile</title>
<meta name="layout" content="userLayout"/>

<div class="container  w-100">
    <div class="row text-center border border-dark">
        <div class="col">
            <h2>Change Password</h2>
        </div>
    </div>

    <div class="row mt-5 ">

        <div class="container pt-3">
            <div class="row justify-content-sm-center">
                <div class="col-sm-6 col-md-7">

                    <div class="card-body">
                        <form controller="user" action="change_password" method="post" id="changeForm">
                            <div class="text-left">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Password</label>

                                    <div class="col-sm-7">
                                        <input type="password" id="password" name="password" class="form-control"
                                               placeholder="Password" required/><span id="errorPass"></span>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">New Password</label>

                                    <div class="col-sm-7">
                                        <input type="password" id="newpassword" name="newpassword" id="newPass"
                                               class="form-control" placeholder="New Password" required/>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">Confirm Password</label>

                                    <div class="col-sm-7">
                                        <input type="password" id="repassword" name="repassword" id="rePass"
                                               class="form-control" placeholder="New Password" required/><span
                                            id="wrongPass"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="text-center">
                            <button class="btn btn-sm btn-primary" type="submit" name="change"
                                    id="change">Change</button>

                            <button class="btn btn-sm btn-secondary  " type="button" name="clear"
                                    id="clear">Clear</button>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>

    </div>

</div>

<asset:javascript src="passwordChange.js"/>
