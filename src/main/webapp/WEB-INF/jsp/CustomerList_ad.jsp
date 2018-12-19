<%-- 
    Document   : orderBooking
    Created on : Jul 17, 2017, 4:17:30 PM
    Author     : User
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style type="text/css">
    img{
        width: 55%;
        height: auto;
    }
</style>
<aside class="right-side">
    <!-- Main content -->
    <section class="content">

        <div class="row">
            <div class="col-xs-12">
                <div class="panel">
                    <header class="panel-heading">
                        <strong>Products</strong>
                    </header>
                    <!-- <div class="box-header"> -->
                    <!-- <h3 class="box-title">Responsive Hover Table</h3> -->

                    <!-- </div> -->
                    <div class="panel-body table-responsive">
                        <div class="box-tools m-b-15">
                            <div class="input-group">
                                <form action="/e-shopper/admin/searchcust" method="post">
                                    <input type="text" name="searchOrd" class="form-control input-sm pull-left" style="width: 150px;" placeholder="Search Customer"/>
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-default" type="submit"><i class="fa fa-search"></i></button>
                                    </div>
                                </form>
                            </div>
                        </div>


                        <table class="table table-hover">
                            <tr>
                                <th>Number</th>
                                <th>Name</th>
                                <th>Mobile phone</th>
                                <th>Email</th>
                                <th>Address</th>

                                <th></th>
                                <th></th>
                            </tr>
                            <%
                                int i = 1;
                            %>
                            <c:forEach items="${custList}" var="cust" >
                                <tr>
                                    <td><%
                                        out.print(i++);
                                        %></td>
                                    <td>${cust.custom_name}</td>
                                    <td>${cust.custom_phone}</td>
                                    <td>${cust.custom_email}</td>
                                    <td>${cust.custom_address}</td>

                                </tr>
                            </c:forEach>
                        </table>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div>
        </div>

    </section>
</aside>

