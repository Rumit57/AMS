<%-- 
    Document   : Report2
    Created on : 29 Jan, 2020, 4:52:50 PM
    Author     : rumit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body onload="reportrange2()">
        <br>
        <div class="row">
            <div class="col-md-12">

                <div class="panel-body ">    
                    <form action="#"> 
                        <div class="row">
                            <div class="col-md-6 col-lg-3">
                                <div class="card">
                                    <label>Employee Name</label>
                                    <br>
                                    <select style="width:100%" data-placeholder="Search" multiple class="chosen-select" name="test">
                                        <option>Rumit</option>
                                        <option>Karan</option>
                                        <option>Raj</option>
                                        <option>Brijesh</option>
                                    </select>
                                    <script>
                                        $(".chosen-select").chosen({
                                            no_results_text: "Oops, nothing found!"
                                        });
                                    </script>
                                </div>
                            </div>

                            <div  class="col-md-6 col-lg-3">
                                <div class="card">
                                    <label>Date</label>
                                    <i class="fa fa-calendar" ></i>&nbsp;
                                    <i class="fa fa-caret-down"></i><input id="reportrange2"  style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc; width: 100%"/>
                                </div>
                            </div>

                            <div  class="col-md-6 col-lg-3">
                                <div class="card">
                                    <label>Filter Option</label>
                                    <select id="filter2" name="filter2" class="form-control"  style="width: 100%">
                                        <option  value="filter2">--Select--</option>
                                        <option value="monthly2">Monthly</option>
                                        <option value="yearly2">Yearly</option>
                                    </select> 
                                </div>
                            </div>
                            <div  class="col-md-6 col-lg-3">
                                <div class="card" > 
                                    <div  id="hideDropdown2">
                                        <label>Select Month</label>
                                        <select id="month2" style="width:50%" class="form-control" disabled>
                                            <option value="01">Jan</option>
                                            <option value="02">Feb</option>
                                            <option value="03">Mar</option>
                                            <option value="04">Apr</option>
                                            <option value="05">May</option>
                                            <option value="06">Jun</option>
                                            <option value="07">Jul</option>
                                            <option value="08">Aug</option>
                                            <option value="09">Sep</option>
                                            <option value="10">Oct</option>
                                            <option value="11">Nov</option>
                                            <option value="12">Dec</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div  class="col-md-6 col-lg-3">
                                <div class="card"> 
                                    <div  id="hideDropdown2_1">
                                        <label>Select Year</label>
                                        <select id="year2" style="width:50%" class="form-control" disabled>
                                            <option value="2020">2020</option>
                                            <option value="2019">2019</option>
                                            <option value="2018">2018</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div  class="col-md-12 ">
                                <br>
                                <center>
                                    <button type="button" class="btn btn-primary" name="filterSubmit">Filter</button>
                                </center>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>


        <br>
        <br>
        <div class="row">
            <div class="col-md-12">
                <div class="panel-body ">    
                    <div class="data-table-area mg-tb-15">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="datatable-dashv1-list custom-datatable-overright">
                                        <div >
                                            <a onclick="pdf2()" class="btn btn-primary pull-left" role="button" href="pdf/9.pdf"
                                               download="9.pdf">
                                                Download PDF
                                            </a>
                                            <script>
                                                var request = new XMLHttpRequest();
                                                function pdf2() {

                                                    var url = "ITextTest.jsp";
                                                    try
                                                    {
                                                        request.open("GET", url, true);
                                                        request.send();
                                                    } catch (e)
                                                    {
                                                        alert("Unable to connect to server");
                                                    }
                                                }
                                            </script>
                                        </div>

                                        <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true"  data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                               data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true"  data-toolbar="#toolbar">
                                            <thead>
                                                <tr>
                                                    <th data-field="id">No</th>
                                                    <th data-field="name" data-editable="true">Name</th>

                                                    <th data-field="PunchIn" data-editable="true">Punch In</th>
                                                    <th data-field="PunchOut" data-editable="true">Punch Out</th>
                                                    <th data-field="lateTime" data-editable="true">Late Time</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    int count2 = 1;
                                                    for (int i = 0; i <= 15; i++) {
                                                %>
                                                <tr>
                                                    <td><%=count2%></td>
                                                    <td>XYZ</td>
                                                    <td>2019-12-18 10:15:30.0</td>
                                                    <td>2019-12-18 18:55:00.0</td>
                                                    <td>01:15:00</td>
                                                </tr>
                                                <%
                                                        count2++;
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

        <script type="text/javascript">
            function reportrange2() {
                var start = moment().subtract(29, 'days');
                var end = moment();

                function cb(start, end) {
                    $('#reportrange2').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
                }

                $('#reportrange2').daterangepicker({
                    startDate: start,
                    endDate: end,
                    ranges: {
                        'Today': [moment(), moment()],
                        'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                        'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                        'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                        'This Month': [moment().startOf('month'), moment().endOf('month')],
                        'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                    }
                }, cb);

                cb(start, end);
            }
        </script>

        <script>
            function chainSelect(current, target, target1) {
                var value1 = $(current).on('change', function () {
                    if ($(this).find(':selected').val() != 'monthly2') {
                        document.getElementById("hideDropdown2").style.display = "none";
                        $(target).prop('disabled', 'disabled').val(null);
                        var value = $(this).find(':selected').text();
                    } else {
                        $("#month2").val($("#month2 option:first").val());
                        document.getElementById("hideDropdown2").style.display = "block";
                        $(target).removeAttr('disabled');
                    }

                    if ($(this).find(':selected').val() != 'yearly2')
                    {
                        document.getElementById("hideDropdown2_1").style.display = "none";
                        $(target1).prop('disabled', 'disabled').val(null);
                        var value = $(this).find(':selected').text();
                    } else {
                        $("#year2").val($("#year2 option:first").val());
                        document.getElementById("hideDropdown2_1").style.display = "block";
                        $(target1).removeAttr('disabled');
                    }

                    return value;
                });
                return value1;
            }
            month = chainSelect('select#filter2', '#month2', '#year2');
        </script>

    </body>
</html>
