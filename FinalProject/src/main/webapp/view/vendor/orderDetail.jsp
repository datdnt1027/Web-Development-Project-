<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
   <script language="javascript">
	function SetStatus() {
		var e = document.getElementById("status");
		document.getElementById("statusOrder").value = e.value;
	}
	function SetStatusRT() {
		var e = document.getElementById("status");
		return document.getElementById("statusOrder").value;
	}
</script>
    
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
                        <li class="breadcrumb-item active"><a href="{{url_for('admin_manager')}}">Order Detail</a></li>
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
                            <h3 class="card-title">Order Detail</h3>
                            <div class="float-sm-right">
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div style=" margin-top: 20px; margin-bottom: -45px; ">
                            </div>
                        </div>
                        <div class="card-body">
							Status Order: 
							<input type="text" id="statusOrder" class="form-control" value="${order.status}"/> 
							<select id="status" class="form-control" onchange="SetStatus();">
									<option value="wait_confirmation">wait_confirmation</option>
									<option value="wait_goods">wait_goods</option>
									<option value="delivering">delivering</option>
									<option value="delivered">delivered</option>
							</select> 

							<button class="btn btn-success" ><a class="bg-light text-dark" 
							href="<c:url value='/vendor/order/changeST?orderId=${order.id}&status=${order.status}'/>">Update</a></button>

							<br />
						</div>
                        <div class="card-body">
                        
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Product</th>
                                    <th>Order ID</th>
                                    <th>Count</th>
                                </tr>
                                </thead>
                                <tbody>
            					<c:forEach items="${orderItems}" var="orderItem">
            					
            					 <tr>
                                    <td>${orderItem.id}</td>
                                    <td>${orderItem.product.name}</td>
                                    <td>${orderItem.orderId}</td>
                                    <td>${orderItem.count}</td>

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
  