<%-- 
    Document   : login
    Created on : 16 Jan, 2020, 9:51:51 AM
    Author     : rumit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
        <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css"/>
        <link rel="stylesheet" type="text/css" href="css/util.css"/>
        <link rel="stylesheet" type="text/css" href="css/main.css"/>
        <link href="./plugins/sweetalert/css/sweetalert.css" rel="stylesheet"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
    </head>
    <body>
        <div class="limiter">
            <div class="container-login100" style="background-image: url('images/bg-01.jpg');">
                <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
                    <form action="/LoginSession" method="post" class="login100-form validate-form">
                        <span class="login100-form-title p-b-49">
                            Login To Continue
                        </span>
                        <center><span style="color:red">${error}</span></center>
                        <div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
                            <span class="label-input100">Email</span>
                            <input class="input100" type="text" name="email" placeholder="Type your username">
                            <span class="focus-input100" data-symbol="&#xf206;"></span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate="Password is required">
                            <span class="label-input100">Password</span>
                            <input class="input100" type="password" name="pass" placeholder="Type your password">
                            <span class="focus-input100" data-symbol="&#xf190;"></span>
                        </div>
                        <div class="text-right p-t-8 p-b-31">
                            <a data-toggle="modal" data-target="#exampleModal">
                                Forgot password?
                            </a>
                        </div>
                        <div class="container-login100-form-btn">
                            <div class="wrap-login100-form-btn">
                                <div class="login100-form-bgbtn"></div>
                                <button class="login100-form-btn">
                                    Login
                                </button>
                            </div>
                        </div>
                    </form>
                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModal" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-body">
                                    <div class="panel-body">
                                        <div class="text-center">
                                            <h3><i class="fa fa-lock fa-4x"></i></h3><br>
                                            <h3 class="text-center">Forgot Password?</h3><br>
                                            <p>You can reset your password here.</p><br>
                                            <form id="register-form" action="mail" class="form" method="post">
                                                <div class="form-group">
                                                    <input id="email" name="to" placeholder="email address" class="form-control"  type="email" required=""/>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <button onclick="sweet()" data-dismiss="modal" type="button" class="btn btn-primary">Send link</button>
                                </div>
                                <script src="./plugins/sweetalert/js/sweetalert.min.js"></script>
                                <script src="./plugins/sweetalert/js/sweetalert.init.js"></script>
                                <script type="text/javascript">
                                    function sweet() {
                                        swal("Mail Send!", "Link send in your email.", "success");
                                    }
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="dropDownSelect1"></div>

        <!--===============================================================================================-->
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <script src="js/main.js"></script>
        <script src="./plugins/sweetalert/js/sweetalert.min.js"></script>
        <script src="./plugins/sweetalert/js/sweetalert.init.js"></script>
    </body>
</html>
