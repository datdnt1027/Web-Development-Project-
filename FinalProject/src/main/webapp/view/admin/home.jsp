<<<<<<< Updated upstream
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
                        {%if brands%}
                        <li class="breadcrumb-item active">Brand</li>
                        {% else %}
                        <li class="breadcrumb-item active">Category</li>
                        {% endif %}
=======
                        <li class="breadcrumb-item active">PRODUCT</li>
>>>>>>> Stashed changes
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <section class="content">
        <div class="container-fluid">
            <div class="row">
<<<<<<< Updated upstream
                 <div class="col-md-3"></div>
                <div class="col-md-6">
                    <!-- /.card -->
                    <div class="card">
                        <div class="card-header">

                            <h3 class="card-title">MANAGE BRAND</h3>
                            {% else %}
                            <h3 class="card-title">MANAGE CATEGORY</h3>


=======
                <div class="col-12">
                    <!-- /.card -->
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">MANAGE PRODUCTS</h3>
                            <div class="float-sm-right">
                                <button class="btn btn-block bg-gradient-info"
                                        onclick="window.location.href='{{url_for('addproduct')}}'">New A Product
                                </button>
                            </div>
>>>>>>> Stashed changes
                        </div>
                        <div class="row justify-content-center">
                            <div style=" margin-top: 20px; margin-bottom: -45px; ">{%include '_messages.html'%}</div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th>Sr</th>
<<<<<<< Updated upstream
                                    <th>Name</th>
                                    {%if brands%}
                                    <th>Category</th>
                                    {% endif %}
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                                </thead>
                                <tbody>
                                {%if brands%}
                                {%for _brand in brands%}
                                {% set brand= _brand[0] %}
                                <tr>
                                    <td>{{loop.index}}</td>
                                    <td>{{brand.name}}</td>
                                    <td>{{_brand[1]}}</td>
                                    <td><a href="{{url_for('updatebrand',id=brand.id)}}" class="btn btn-sm btn-info">Edit</a>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-primary btn-danger" data-toggle="modal"
                                                data-target="#staticBackdrop-{{brand.id}}">
=======
                                    <th>Product</th>
                                    <th>Price</th>
                                    <th>Discount</th>
                                    <th>Quantity</th>
                                    <th>Category</th>
                                    <th>Brand</th>
                                    <th>Image</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
            
                                <tr>
                                    <td>loop.index</td>
                                    <td>product.name</td>
                                    <td>product.price</td>
                                    <td>product.discount %</td>
                                    <td>product.stock</td>
                                    <td>product.category_id</td>
                                    <td>product.brand.name</td>
                                    <td><img src="{{url_for('static',filename='images/'+product.image_1)}}" width="50"
                                             height="40"></td>
                                    <td><a href="{{url_for('updateproduct',id=product.id)}}"
                                           class="btn btn-info ">Edit</a></td>
                                    <td>
                                        <button type="button" class="btn  btn-danger" data-toggle="modal"
                                                data-target="#staticBackdrop-{{product.id}}">
>>>>>>> Stashed changes
                                            Delete
                                        </button>
                                    </td>
                                </tr>
                                <!-- Modal -->
<<<<<<< Updated upstream
                                <div class="modal fade" id="staticBackdrop-{{brand.id}}" data-backdrop="static"
                                     data-keyboard="false"
=======
                                <div class="modal fade" id="staticBackdrop-{{product.id}}" data-backdrop="static"
                                   data-keyboard="false"
>>>>>>> Stashed changes
                                     tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
<<<<<<< Updated upstream
                                                <h5 class="modal-title" id="staticBackdropLabel1">{{brand.name}}</h5>
=======
                                                <h5 class="modal-title" id="staticBackdropLabel">product.name</h5>
>>>>>>> Stashed changes
                                                <button type="button" class="close" data-dismiss="modal"
                                                        aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
<<<<<<< Updated upstream
                                                <span class="text-danger">are you sure delete {{brand.name}}</span>
=======
                                                <span class="text-danger">are you sure delete the product product.name</span>
>>>>>>> Stashed changes
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-warning  btn-secondary"
                                                        data-dismiss="modal">
                                                    Cancel
                                                </button>
<<<<<<< Updated upstream
                                                <form action="{{url_for('deletebrand', id=brand.id)}}" method="POST">
=======
                                                <form action="{{url_for('deleteproduct', id=product.id)}}"
                                                      method="POST">
>>>>>>> Stashed changes
                                                    <button type="submit" class="btn btn-danger">Delete</button>
                                                </form>

                                            </div>
                                        </div>
                                    </div>
                                </div>
<<<<<<< Updated upstream

                                {%endfor%}
                                {%else%}
                                {%for category in categories%}
                                <tr>
                                    <td>{{loop.index}}</td>
                                    <td>{{category.name}}</td>
                                    <td><a href="{{url_for('updatecat',id=category.id)}}" class="btn btn-sm btn-info">Edit</a>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-primary btn-danger" data-toggle="modal"
                                                data-target="#staticBackdrop-{{category.id}}">
                                            Delete
                                        </button>
                                    </td>
                                </tr>
                                <!-- Modal -->
                                <div class="modal fade" id="staticBackdrop-{{category.id}}" data-backdrop="static"
                                     data-keyboard="false"
                                     tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="staticBackdropLabel">{{category.name}}</h5>
                                                <button type="button" class="close" data-dismiss="modal"
                                                        aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <span class="text-danger">are you sure delete {{category.name}}</span>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-warning  btn-secondary"
                                                        data-dismiss="modal">
                                                    Cancel
                                                </button>
                                                <form action="{{url_for('deletecat', id=category.id)}}" method="POST">
                                                    <button type="submit" class="btn btn-danger">Delete</button>
                                                </form>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                {%endfor%}
                                {%endif%}
=======
       
>>>>>>> Stashed changes
                                </tbody>
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
<<<<<<< Updated upstream
                 <div class="col-md-3"></div>
=======
>>>>>>> Stashed changes
            </div>
        </div>

    </section>
    <!-- /.content -->
</div>
<<<<<<< Updated upstream
=======

>>>>>>> Stashed changes
