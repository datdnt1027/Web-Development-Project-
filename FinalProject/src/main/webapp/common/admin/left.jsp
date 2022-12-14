<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>

<!-- /.navbar -->
<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
	<!-- Brand Logo -->
	<a href="admin" class="brand-link"> <img
		src="${template}admin/img/logo-xs.png" alt="Logo"
		class="brand-image img-circle elevation-3" style="opacity: .8">
		<span class="brand-text font-weight-light">E.Store Manager</span>
	</a>
	<!-- Sidebar -->
	<div class="sidebar">
		<!-- Sidebar user (optional) -->
		<!-- Sidebar Menu -->
		<nav class="mt-2">
			<ul class="nav nav-pills nav-sidebar flex-column"
				data-widget="treeview" role="menu" data-accordion="false">
				<!-- Add icons to the links using the .nav-icon class
                        with font-awesome or any other icon font library -->
				<li class="nav-item has-treeview"><a href="#" class="nav-link ">
						<i class="nav-icon fas fa-tachometer-alt"></i>
						<p>
							Cửa hàng<i class="right fas fa-angle-left"></i>
						</p>
				</a>
					<ul class="nav nav-treeview">
						<li class="nav-item"><a href="http://127.0.0.1:5000/brands"
							class="nav-link {% if request.endpoint == 'admin_manager' %} active {% endif %}">
								<i class="far fa-circle nav-icon"></i>
								<p>Quản lí cửa hàng</p>
						</a></li>
						<li class="nav-item"><a href="{{url_for('register')}}"
							class="nav-link {% if request.endpoint == 'register' %} active {% endif %}">
								<i class="far fa-circle nav-icon"></i>
								<p>Thêm cửa hàng</p>
						</a></li>
					</ul></li>
				<li
					class="nav-item has-treeview">
					<a href="#"
					class="nav-link ">
						<i class="nav-icon fas fa-table"></i>
						<p>
							Nhãn hàng <i class="right fas fa-angle-left"></i>
						</p>
				</a>
					<ul class="nav nav-treeview">
						<li class="nav-item"><a href="{{url_for('brands')}}"
							class="nav-link {% if request.endpoint == 'brands' %} active {% endif %}">
								<i class="far fa-circle nav-icon"></i>
								<p>Quản lí nhãn hàng</p>
						</a></li>
						<li class="nav-item"><a href="{{url_for('addbrand')}}"
							class="nav-link {% if request.endpoint == 'addbrand' %} active {% endif %}">
								<i class="far fa-circle nav-icon"></i>
								<p>Thêm nhãn</p>
						</a></li>
					</ul>
				</li>
				<li
					class="nav-item has-treeview ">
					<a href="#"
					class="nav-link ">
						<i class="nav-icon far fa-plus-square"></i>
						<p>
							Loại sản phẩm <i class="right fas fa-angle-left"></i>
						</p>
				</a>
					<ul class="nav nav-treeview">
						<li class="nav-item"><a href="{{url_for('categories')}}"
							class="nav-link {% if request.endpoint == 'categories' %} active {% endif %}">
								<i class="far fa-circle nav-icon"></i>
								<p>Quản lý sản phẩm</p>
						</a></li>
						<li class="nav-item"><a href="{{url_for('addcat')}}"
							class="nav-link {% if request.endpoint == 'addcat' %} active {% endif %}">
								<i class="far fa-circle nav-icon"></i>
								<p>Thêm sản phẩm</p>
						</a></li>
					</ul>
				</li>
				<li
					class="nav-item has-treeview ">
					<a href="{{url_for('product')}}"
					class="nav-link ">
						<i class="nav-icon fas fa-barcode"></i>
						<p>
							Sản phẩm <i class="right fas fa-angle-left"></i>
						</p>
				</a>
					<ul class="nav nav-treeview">
						<li class="nav-item"><a href="{{url_for('product')}}"
							class="nav-link {% if request.endpoint == 'product' %} active {% endif %}">
								<i class="far fa-circle nav-icon"></i>
								<p>Quản lí sản phẩm</p>
						</a></li>
						<li class="nav-item"><a href="{{url_for('addproduct')}}"
							class="nav-link {% if request.endpoint == 'addproduct' %} active {% endif %}">
								<i class="far fa-circle nav-icon"></i>
								<p>Thêm sản phẩm</p>
						</a></li>
					</ul>
				</li>

				<li class="nav-item"><a href="{{ url_for('orders_manager')}}"
					class="nav-link ">
						<i class="nav-icon fas fa-inbox"></i>
						<p>Quản lí đơn hàng</p>
				</a></li>
				<li class="nav-item"><a
					href="{{ url_for('changes_password') }}"
					class="nav-link ">
						<i class="nav-icon fas fa-edit"></i>
						<p>Quản lí doanh thu</p>
				</a></li>
				<li class="nav-item"><a href="{{ url_for('logout') }}"
					class="nav-link"> <i class="nav-icon fas fa-play"></i>
						<p>Logout</p>
				</a></li>
			</ul>
		</nav>
		<!-- /.sidebar-menu -->
	</div>
	<!-- /.sidebar -->
</aside>
<!-- //////////////////////////////////////////////////////////////////////-->