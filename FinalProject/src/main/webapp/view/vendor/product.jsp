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
						<li class="breadcrumb-item"><a
							href="">Home</a></li>
						<li class="breadcrumb-item active"><a
							href="">Product</a></li>
					</ol>
				</div>
			</div>
		</div>
		<!-- /.container-fluid -->
	</section>
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<!-- /.card -->
					<div class="card">
						<div class="card-header">
							<h3 class="card-title">Manage Product for Store: ${store.name} </h3>
							<div class="float-sm-right">
								<button class="btn btn-block bg-gradient-info">
									<a class="link-secondary" href="<c:url value='/vendor/product/add'/> ">New A Product</a></button>
							</div>
						</div>
						<div class="row justify-content-center">
	
						<!-- /.card-header -->
						<div class="card-body">
							<table id="example1" class="table table-bordered table-striped">
								<thead>
									<tr>
										<th>Id</th>
										<th>Name</th>
										<th>Price</th>
										<th>Quantity</th>
										<th>Sold</th>
										<th>CategoryId</th>
										<th>Images</th>
										<th></th>
										<th></th>
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${products}" var="product">
									<tr>
										<td>${product.id}</td>
										<td>${product.name}</td>
										<td>${product.price}</td>
										<td>${product.quantity}</td>
										<td>${product.sold}</td>
										<td>${product.categoryId}</td>
										<td><img src="${pageContext.request.contextPath}/assets/images/product/${product.images}" width="50" height="40"></td>
                                   	 	<td><a href="<c:url value='/vendor/product/edit?StoreId=${product.id}'/>" class="btn btn-info ">Edit</a></td>
                                    	<td><a href="<c:url value='/vendor/product/delete?id=${product.id}'/>" class="btn btn-danger ">Delete</a></td>
										</td>
									
									</tr>
								</c:forEach>
									
									<!-- Modal -->
									<div class="modal fade" id="staticBackdrop-{{product.id}}"
										data-backdrop="static" data-keyboard="false" tabindex="-1"
										aria-labelledby="staticBackdropLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="staticBackdropLabel">product.name</h5>
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="modal-body">
													<span class="text-danger">are you sure delete the
														product product.name</span>
												</div>
												<div class="modal-footer">
													<button type="button"
														class="btn btn-warning  btn-secondary"
														data-dismiss="modal">Cancel</button>
													<form action="{{url_for('deleteproduct', id=product.id)}}"
														method="POST">
														<button type="submit" class="btn btn-danger">Delete</button>
													</form>

												</div>
											</div>
										</div>
									</div>

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
