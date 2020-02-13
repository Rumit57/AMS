<%-- 
    Document   : HRProfile2
    Created on : 16 Jan, 2020, 11:02:19 AM
    Author     : rumit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >

    <head>

        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta content="" name="description" />
        <meta content="webthemez" name="author" />
        <title>Primavera systems</title>
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <link href="assets/css/custom-styles.css" rel="stylesheet" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
        <style>
            .emp-profile1{
                padding: 3%;
                padding-left: 3%;
                margin-top: 1%;
                margin-bottom: 3%;
                margin-left: 10px;
                border-radius: 0.5rem;
                background: #fff;
            }
            .profile-img1{
                text-align: center;
            }
            .profile-img1 img1{
                width: 70%;
                height: 100%;
            }
            .profile-img1 .file {
                position: relative;
                overflow: hidden;
                margin-top: -20%;
                width: 70%;
                border: none;
                border-radius: 0;
                font-size: 15px;
                background: #212529b8;
            }
            .profile-img1 .file input {
                position: absolute;
                opacity: 0;
                right: 0;
                top: 0;
            }
            .profile-head1 h5{
                color: #333;
            }
            .profile-head1 h6{
                color: #0062cc;
            }
            .profile-edit-btn1{
                border: none;
                border-radius: 1.5rem;
                width: 70%;
                padding: 2%;
                font-weight: 600;
                color: #6c757d;
                cursor: pointer;
                left: 200px;
            }
            .proile-rating1{
                font-size: 12px;
                color: #818182;
                margin-top: 5%;
            }
            .proile-rating1 span{
                color: #495057;
                font-size: 15px;
                font-weight: 600;
            }
            .profile-head1 .nav-tabs1{
                margin-bottom:5%;
            }
            .profile-head1 .nav-tabs1 .nav-link1{
                font-weight:600;
                border: none;
            }
            .profile-head1 .nav-tabs1 .nav-link1.active{
                width: 130%;
                border: none;
                border-bottom:2px solid #0062cc;
            }
            .profile-work1{
                padding: 14%;
                margin-top: -15%;
            }
            .profile-work1 p1{
                font-size: 12px;
                color: #818182;
                font-weight: 600;
                margin-top: 10%;
            }
            .profile-work1 a{
                text-decoration: none;
                color: #495057;
                font-weight: 600;
                font-size: 14px;
            }
            .profile-work1 ul{
                list-style: none;
            }
            .profile-tab1 label{
                font-weight: 600;

            }
            .profile-tab1 p{
                padding: 0;
                font-weight: 600;
                color: #0062cc;
                color: teal;
            }
            .img {
                position: fixed;
                max-width: 100%;
                height: auto;
                vertical-align: middle;
                border: 0;
            }
        </style>
    </head>
    <body>
        <!--preloader-->
        <link href="css/style_1.css" rel="stylesheet">
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
            <%@include file="header2.jsp" %>

            <nav class="navbar-default navbar-side" role="navigation">
                <div class="sidebar-collapse">
                    <div id="mySidebar" class="sidebar">
                        <ul class="nav" id="main-menu">
                            <li>
                                <a href="HRdeshboard.jsp"><i class="fa fa-dashboard"></i> Dashboard</a>
                            </li>
                            <li>
                                <a href="manage_employee2.jsp"><i class="fa fa-edit"></i>  Employee</a>
                            </li> 

                            <li>
                                <a href="live_activity_table2.jsp"><i class="fa fa-table"></i> Live Activity  </a>
                            </li> 		 
                            <li>
                                <a href="reports2.jsp"><i class="glyphicon glyphicon-list-alt"></i> Reports </a>
                            </li> 	
                        </ul>   
                    </div>
                </div>
            </nav>

            <div id="page-wrapper">
                <div class="header"> 
                    <br>
                    <ol class="breadcrumb">
                        <h1>
                            <li class="active">HR Profile</li>
                        </h1>
                    </ol> 

                    <div style="border-radius: 1.5rem" class="row">
                        <div class="col-md-12">
                            <div class="sparkline13-list">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="profile-img1">
                                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS52y5aInsxSm31CvHOFHWujqUx_wWTS9iM6s7BAm21oEN_RiGoog" alt=""/>
                                            <div class="file btn btn-lg btn-primary">
                                                Change Photo
                                                <input type="file" name="file"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="profile-head1">
                                            <h3>
                                                Karan Jayswal
                                            </h3>
                                            <h6>
                                                Web Developer and Designer
                                            </h6>
                                            <p class="proile-rating">RANKINGS : <span>8/10</span></p>
                                            <ul class="nav nav-tabs1" id="myTab" role="tablist">
                                                <li class="nav-item">
                                                    <a class="nav-link1 active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Personal details</a>

                                                </li>

                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <input type="submit" class="profile-edit-btn1" onclick="edit()" id="edit" value="Edit Profile"/>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">

                                    </div>
                                    <div class="col-md-8">
                                        <div class="tab-content profile-tab1">
                                            <form action="#" >
                                                <div class="row">
                                                    <div class="col-md-2">
                                                        <label>User Id</label>
                                                    </div>
                                                    <div class="col-md-1">
                                                        <label>:-</label>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <p id="user_id">Karan123</p>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-2">
                                                        <label>Name</label>
                                                    </div>
                                                    <div class="col-md-1">
                                                        <label>:-</label>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <p id="name">Karan Jayswal</p>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-2">
                                                        <label>Email</label>
                                                    </div>
                                                    <div class="col-md-1">
                                                        <label>:-</label>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <p id="email">karanjayswal@gmail.com</p>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-2">
                                                        <label>Phone</label>
                                                    </div>
                                                    <div class="col-md-1">
                                                        <label>:-</label>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <p id="phone">123 456 7890</p>
                                                        <!--<input type='hidden'  class='form-control' name='phone' id='phone' placeholder='enter phone number' value="+phone+" >-->
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-2">
                                                        <label>Address</label>
                                                    </div>
                                                    <div class="col-md-1">
                                                        <label>:-</label>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <p id="add">1947,Chamunda Nagar,Ghelkhadi,Vijalpor</p>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-2">
                                                        <label>Gender</label>
                                                    </div>
                                                    <div class="col-md-1">
                                                        <label>:-</label>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <p id="gender">Male</p>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-2">
                                                        <label>City</label>
                                                    </div>
                                                    <div class="col-md-1">
                                                        <label>:-</label>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <p id="city">Navsari</p>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-2">
                                                        <label>State</label>
                                                    </div>
                                                    <div class="col-md-1">
                                                        <label>:-</label>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <p id="state">Gujarat</p>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-2">
                                                        <label>Country</label>
                                                    </div>
                                                    <div class="col-md-1">
                                                        <label>:-</label>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <p id="country">India</p>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-8">
                                                        <center>
                                                            <button type="submit" id="update" class="btn btn-primary"  name="update" style="width:20%;visibility: hidden">Update</button>
                                                        </center>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
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

        <script>
                                 function edit()
                                 {
                                     var user_id1 = document.getElementById("user_id").textContent;
                                     document.getElementById("user_id").innerHTML = "<input type='text'  class='form-control' name='user_id' id='user_id' placeholder='enter username' value=" + user_id1 + " >";
                                     var name = document.getElementById("name").textContent;
                                     document.getElementById("name").innerHTML = "<input type='text' ' class='form-control' name='name' id='name' placeholder='enter name' value=" + name + " >";
                                     var email = document.getElementById("email").textContent;
                                     document.getElementById("email").innerHTML = "<input type='email' class='form-control' name='email' id='email' placeholder='enter Email' value=" + email + " >";
                                     var phone = document.getElementById("phone").textContent;
                                     document.getElementById("phone").innerHTML = "<input type='text'  class='form-control' name='phone' id='phone' placeholder='enter phone number' value=" + phone + " >";
                                     var address = document.getElementById("add").textContent;
                                     document.getElementById("add").innerHTML = "<input type='text'  class='form-control' name='address' id='address' placeholder='enter address' value=" + address + " >";
                                     var gen = document.getElementById("gender").textContent;
                                     document.getElementById("gender").innerHTML = "<input type='text'  class='form-control' name='gender' id='gender' placeholder='enter address' value=" + gen + " >";
                                     var city = document.getElementById("city").textContent;
                                     document.getElementById("city").innerHTML = "<input type='text'  class='form-control' name='city' id='city' placeholder='enter city' value=" + city + " >";
                                     var state = document.getElementById("state").textContent;
                                     document.getElementById("state").innerHTML = "<input type='text'  class='form-control' name='state' id='state' placeholder='enter state' value=" + state + " >";
                                     var country = document.getElementById("country").textContent;
                                     document.getElementById("country").innerHTML = "<input type='text' class='form-control' name='country' id='country' placeholder='enter country' value=" + country + " >";
                                     document.getElementById("update").style.visibility = "visible";
                                     document.getElementById("edit").style.visibility = "hidden";

                                 }
        </script>

    </body>
</html>

