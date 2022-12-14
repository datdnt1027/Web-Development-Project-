<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"  %>

<!-- Site wrapper -->
<div class="wrapper">
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a href="{{url_for('home')}}" class="nav-link">Trang chủ</a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a href="{{url_for('admin')}}" class="nav-link">SuperAdmin</a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a href="{{url_for('quan_li_khach_hang')}}" class="nav-link">Nhân viên</a>
            </li>
        </ul>
        <!-- SEARCH FORM -->
        <form class="form-inline ml-3">
            <div class="input-group input-group-sm">
                <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
                <div class="input-group-append">
                    <button class="btn btn-navbar" type="submit">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </div>
        </form>
    </nav>
    <!-- /.navbar -->
    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
        <!-- Brand Logo -->
        <a href="#" class="brand-link">
            <img src="{{url_for('static',filename='logo.png')}}"
                 alt="Logo"
                 class="brand-image img-circle elevation-3"
                 style="opacity: .8">
            <span class="brand-text font-weight-light">EtravTour</span>
        </a>
        <!-- Sidebar -->
        <div class="sidebar">
            <!-- Sidebar user (optional) -->
            <!-- Sidebar Menu -->
            <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                {% if user %}
                <div class="image">
                    <img src="{{url_for('static',filename='images/avatar.jpg')}}" class="img-circle elevation-2"
                         alt="Admin Image">
                </div>
                <div class="info">
                    <a href="#" class="d-block">{{user.name}}</a>
                </div>
                {% endif%}
            </div>
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                    data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
                        with font-awesome or any other icon font library -->
                    <li class="nav-item has-treeview {% if request.endpoint == 'customer_manager' or request.endpoint == 'admin_register_custormer' %} menu-open {% endif %}">
                        <a href="#"
                           class="nav-link {% if request.endpoint == 'customer_manager' or request.endpoint == 'admin_register_custormer' %} active {% endif %}">
                            <i class="nav-icon fas fa-users"></i>
                            <p>
                                Nhân viên
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="{{url_for('quan_li_nhan_vien')}}"
                                   class="nav-link {% if request.endpoint == 'customer_manager' %} active {% endif %}">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Quản lí nhân viên</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item has-treeview {% if request.endpoint == 'brands' or request.endpoint == 'addbrand' %} menu-open {% endif %}">
                        <a href="#"
                           class="nav-link {% if request.endpoint == 'brands' or request.endpoint == 'addbrand' %} active {% endif %}">
                            <i class="nav-icon fas fa-table"></i>
                            <p>
                                Danh mục tour
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="{{url_for('admin')}}"
                                   class="nav-link {% if request.endpoint == 'brands' %} active {% endif %}">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Quản lí danh mục tour</p>
                                </a>
                            </li>
                            <!-- <li class="nav-item">
                                <a href="#"
                                   class="nav-link {% if request.endpoint == 'addbrand' %} active {% endif %}">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Quản lí lộ trình</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#"
                                   class="nav-link {% if request.endpoint == 'addbrand' %} active {% endif %}">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Quản lí địa điểm</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#"
                                   class="nav-link {% if request.endpoint == 'addbrand' %} active {% endif %}">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Quản lí khách sạn, điểm dừng chân</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#"
                                   class="nav-link {% if request.endpoint == 'addbrand' %} active {% endif %}">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Quản lí phương tiện</p>
                                </a>
                            </li> -->

                        </ul>
                    </li>
                    <li class="nav-item has-treeview {% if request.endpoint == 'categories' or request.endpoint == 'addcat' %} menu-open {% endif %}">
                        <a href="#"
                           class="nav-link {% if request.endpoint == 'categories' or request.endpoint == 'addcat' %} active {% endif %}">
                            <i class="nav-icon far fa-plus-square"></i>
                            <p>
                                Doanh thu
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="#"
                                   class="nav-link {% if request.endpoint == 'categories' %} active {% endif %}">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Quản lí doanh thu</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item has-treeview {% if request.endpoint == 'categories' or request.endpoint == 'addcat' %} menu-open {% endif %}">
                        <a href="{{url_for('logoutsuperAdmin')}}"
                           class="nav-link {% if request.endpoint == 'categories' or request.endpoint == 'addcat' %} active {% endif %}">
                            <i class="nav-icon far fa-plus-square"></i>
                            <p>
                                Đăng xuất
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- /.sidebar-menu -->
        </div>
        <!-- /.sidebar -->
    </aside>
    <!-- //////////////////////////////////////////////////////////////////////-->
