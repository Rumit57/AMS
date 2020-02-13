<%-- 
    Document   : changepasswordSuperAdmin
    Created on : 28 Jan, 2020, 2:17:30 PM
    Author     : karan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta content="" name="description" />
    <meta content="webthemez" name="author" />
    <title>Admin Dashboard</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/custom-styles.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <!--preloader-->
    <link href="css/style_1.css" rel="stylesheet"/>
    <script src="js/common.min.js"></script>
    <script src="js/custom.min.js"></script>
    <div id="preloader">
        <div class="loader">
            <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10" />
            </svg>
        </div>
    </div>

    <div id="wrapper">
        <%@include file="header3.jsp" %>
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <div id="mySidebar" class="sidebar">
                    <ul class="nav" id="main-menu">
                        <li>
                            <a href="Super_Admin_Deshboard.jsp"><i class="fa fa-dashboard"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="SA_company.jsp"><i class="fa fa-pencil"></i>  Company</a>
                        </li> 
                        <li>
                            <a href="SA_admin.jsp"><i class="fa fa-pencil"></i>  Admin</a>
                        </li> 
                    </ul>
                </div>
            </div>
        </nav>

        <div id="page-wrapper">
            <div class="header"> 
                <div class="row">
                    <div class="col-md-12">
                        <br>
                        <br>
                        <div class="col-md-2"></div>
                        <div class="col-md-8">
                            <div class="sparkline13-list">
                                <h1>
                                    Change Password here
                                </h1>
                                <br>
                                <br>
                                <form action="#">
                                    <div class="form-group">
                                        <label>Old Password</label>
                                        <input type="text" placeholder="Enter Old Password..." class="form-control"/>
                                    </div>
                                    <div class="form-group">
                                        <label>New Password</label> 
                                        <input type="text"  placeholder="Enter New Password..." class="form-control"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Confirm Password</label>
                                        <input type="text" placeholder="Enter Confirm Password..." class="form-control"/>
                                    </div>
                                    <br>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-primary">Submit</button>
                                    </div>
                                </form>               
                            </div>
                        </div>
                        <div class="col-md-2"></div>
                    </div>
                </div>
            </div>

            <div id="page-inner">
                <%@include file="footer.jsp" %>
            </div>
        </div>
    </div>
    <script src="assets/js/jquery-1.10.2.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

</body>
</html>
