<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1></h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{url_for('admin_manager')}}">Home</a></li>
                        <li class="breadcrumb-item active"><a href="{{url_for('admin_manager')}}">Order-Store</a></li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <!-- /.card -->
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Your Order List</h3>
                            <div class="float-sm-right">
                           <button class="btn btn-danger"><a class="bg-light text-dark" href="<c:url value='/vendor/order/manage?storeId=${storeId}&status=all'/>">all</a></button>
                           <button class="btn btn-secondary"><a class="bg-light text-dark" href="<c:url value='/vendor/order/manage?storeId=${storeId}&status=wait_confirmation'/>">wait_confirmation</a></button>
                           <button class="btn btn-primary""><a class="bg-light text-dark" href="<c:url value='/vendor/order/manage?storeId=${storeId}&status=wait_goods'/>">wait_goods</a></button>
                           <button class="btn btn-success"><a class="bg-light text-dark" href="<c:url value='/vendor/order/manage?storeId=${storeId}&status=delivering'/>">delivering</a></button>
                           <button class="btn btn-warning"> <a class="bg-light text-dark" href="<c:url value='/vendor/order/manage?storeId=${storeId}&status=delivered'/>">delivered</a></button>
                        
                            
                            
                           
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div style=" margin-top: 20px; margin-bottom: -45px; ">
                       <!--      {%include '_messages.html'%} -->
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>CustomerID</th>
                                    <th>Address</th>
                                    <th>Phone</th>
                                    <th>Detail</th>
                                </tr>
                                </thead>
                                <tbody>
            					<c:forEach items="${orders}" var="order">
            					
            					 <tr>
                                    <td>${order.id}</td>
                                     <td>${order.userId}</td>
                                     <td>${order.address}</td>
                                      <td>${order.phone}</td>
                                       <td><a href="<c:url value='/vendor/order/orderDetail?orderId=${order.id}	'/>" class="">view detail</a></td>
                                </tr>
            					
            					</c:forEach>
                               
       
                                </tbody>
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
            </div>
        </div>

    </section>
    <!-- /.content -->
</div>