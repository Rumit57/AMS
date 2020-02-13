<%-- 
    Document   : manage_employee2
    Created on : 17 Dec, 2019, 9:59:25 AM
    Author     : rumit
--%>

<%@page import="java.sql.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta content="" name="description" />
        <meta content="webthemez" name="author" />
        <title>Primavera Systems</title>
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <link href="assets/css/custom-styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/data-table/bootstrap-table.css"/>
        <link rel="stylesheet" href="css/data-table/bootstrap-editable.css"/>
        <link href="./plugins/sweetalert/css/sweetalert.css" rel="stylesheet"/>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>

        <style>
            .alert {
                width:55%;    
            }
            .modal-body {
                max-height: calc(100vh - 210px);
                overflow-y: auto;
            }
        </style>
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
            <%@include file="header2.jsp" %>
            <nav class="navbar-default navbar-side" role="navigation">
                <div class="sidebar-collapse">
                    <div id="mySidebar" class="sidebar">
                        <ul class="nav" id="main-menu">
                            <li>
                                <a  href="HRdeshboard.jsp"><i class="fa fa-dashboard"></i> Dashboard</a>
                            </li>            
                            <li>
                                <a class="active-menu" href="#"><i class="fa fa-edit"></i> Employee</a>
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
                    <h1 class="page-header">
                        Employee Details 
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Employee Details</a></li>
                        <li class="active">Data</li>
                    </ol> 
                    <div class="row">
                        <div class="col-md-12">
                            <div class="data-table-area mg-tb-15">
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="sparkline13-list">
                                                <div class="sparkline13-graph">
                                                    <div class="datatable-dashv1-list custom-datatable-overright">
                                                        <button type="button" data-toggle="modal" data-target="#myModal" class="btn btn-primary"> + Add Employee </button>
                                                        <button class="btn btn-success" type="button" name="Import" >Import</button>
                                                        <div id="toolbar">
                                                            <select class="form-control">
                                                                <option value="">Export Basic</option>
                                                                <option value="all">Export All</option>
                                                                <option value="selected">Export Selected</option>
                                                            </select>
                                                        </div>

                                                        <!-- Modal-->
                                                        <div id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal" data-backdrop="static">
                                                            <div role="document" class="modal-dialog">
                                                                <div class="modal-content">
                                                                    <div class="modal-header">
                                                                        <h3 style="width:100%"><center>Employee Registration</center></h3>
                                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                    </div>
                                                                    <div class="modal-body">
                                                                        <form action="#">
                                                                            <div class="form-group">
                                                                                <label>First Name</label>
                                                                                <input type="text" placeholder="Enter Name..." class="form-control"/>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label>Last Name</label> 
                                                                                <input type="text"  placeholder="Enter Email..." class="form-control"/>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label>Email</label>
                                                                                <input type="text" placeholder="Enter Password.." class="form-control"/>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label>Mobile Number</label>
                                                                                <input type="text" placeholder="Enter Confirm Password..." class="form-control"/>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label>User Type</label><br>
                                                                                <select class="btn btn-default dropdown-toggle" data-toggle="dropdown" style="width: 100%">
                                                                                    <option id="">--Select User Type--</option>
                                                                                    <option id="1">Employee</option>
                                                                                    <option id="2">Intern</option>
                                                                                </select> 
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label>City</label>
                                                                                <input type="text" placeholder="Enter City.." class="form-control"/>
                                                                            </div>  
                                                                            <div class="form-group">
                                                                                <label>Pin Code</label>
                                                                                <input type="text" placeholder="Enter pincode.." class="form-control"/>
                                                                            </div> 
                                                                            <div class="form-group">
                                                                                <label>State</label>
                                                                                <input type="text" placeholder="Enter state.." class="form-control"/>
                                                                            </div> 
                                                                            <div class="form-group">
                                                                                <label>Country</label>
                                                                                <input type="text" placeholder="Enter country.." class="form-control"/>
                                                                            </div> 
                                                                            <div class="form-group">
                                                                                <label>User Profile Image</label>
                                                                                <input type="file" class="form-control"/>
                                                                            </div> 
                                                                        </form>
                                                                    </div>
                                                                    <div class="modal-footer">
                                                                        <button type="button" data-dismiss="modal" class="btn btn-secondary">Close</button>
                                                                        <button type="button" class="btn btn-primary">Submit</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true"  data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                                           data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar">
                                                        <thead>
                                                            <tr>
                                                                <th data-field="state" data-checkbox="true"></th>
                                                                <th data-field="id">No</th>
                                                                <th data-field="name" data-editable="true">Name</th>
                                                                <th data-field="Email" data-editable="true">Email</th>
                                                                <th data-field="Phone" data-editable="true">Phone</th>
                                                                <th data-field="action">Action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <%
                                                                int count1 = 1;
                                                                for (int i = 0; i <= 11; i++) {
                                                            %>
                                                            <tr>
                                                                <td></td>
                                                                <td><%=count1%></td>
                                                                <td>XYZ</td>
                                                                <td>xyz@gmail.com</td>
                                                                <td>9876543210</td>
                                                                <td >
                                                        <center>
                                                            <div class="dropdown">
                                                                <div data-toggle="dropdown"><i class="fa fa-ellipsis-v"></i>
                                                                </div>
                                                                <ul class="dropdown-menu">
                                                                    <li><a  href="#" data-toggle="modal" data-target="#myModalone" ><i class='glyphicon glyphicon-pencil'></i>&nbsp;&nbsp;Edit</a></li> 
                                                                    <li class="divider"></li>
                                                                    <li><a  href="#" onclick="sweet()"><i  class='glyphicon glyphicon-remove'></i>&nbsp;&nbsp;Delete</a></li> 
                                                                </ul>
                                                            </div>
                                                        </center>
                                                        </td>
                                                        </tr>
                                                        <%
                                                                count1++;
                                                            }
                                                        %>         
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
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

        <!--modal-->
        <div id="myModalone" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal" data-backdrop="static">
            <div role="document" class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3 style="width:100%"><center>Update Employee Details</center> </h3>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <form action="#">
                            <div class="form-group">
                                <label>First Name</label>
                                <input type="text" placeholder="Enter Name..." class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>Last Name</label> 
                                <input type="text"  placeholder="Enter Email..." class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="text" placeholder="Enter Password.." class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>Mobile Number</label>
                                <input type="text" placeholder="Enter Confirm Password..." class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label>User Type</label><br>
                                <select class="btn btn-default dropdown-toggle" data-toggle="dropdown" style="width: 100%">
                                    <option id="1">--Select User Type--</option>
                                    <option id="1">Employee</option>
                                    <option id="2">Intern</option>
                                </select> 
                            </div>
                            <div class="form-group">
                                <label>Status</label><br>
                                <select class="btn btn-default dropdown-toggle" data-toggle="dropdown" style="width: 100%">
                                    <option id="1">--Select Status--</option>
                                    <option id="1">Active</option>
                                    <option id="2">In-Active.
                                    </option>
                                    <option id="3">Delete.
                                    </option>
                                </select> 
                            </div>
                        </form>
                        <div class="modal-footer">
                            <button type="button" data-dismiss="modal" class="btn btn-danger">Close</button>
                            <button type="button" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script type="text/javascript">
            function sweet() {
                swal({
                    title: "Are you sure?",
                    text: "Your will not be able to recover this imaginary file!",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonClass: "btn-danger",
                    confirmButtonText: "Yes, delete it!",
                    closeOnConfirm: false
                },
                        function () {
                            swal("Deleted!", "Your imaginary file has been deleted.", "success");
                        });
            }
            ;
        </script>

        <script src="assets/js/bootstrap.min.js"></script>
        <script src="./plugins/sweetalert/js/sweetalert.min.js"></script>
        <script src="./plugins/sweetalert/js/sweetalert.init.js"></script> 
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <script src="vendor/popper.js/umd/popper.min.js"></script>
        <script src="js/data-table/bootstrap-table.js"></script>
        <script src="js/data-table/tableExport.js"></script>
        <script src="js/data-table/data-table-active.js"></script>
        <script src="js/data-table/bootstrap-editable.js"></script>
        <script src="js/data-table/bootstrap-table-resizable.js"></script>
        <!--<script src="js/data-table/colResizable-1.5.source.js"></script>-->
        <script src="js/data-table/bootstrap-table-export.js"></script>

    </body>
</html>