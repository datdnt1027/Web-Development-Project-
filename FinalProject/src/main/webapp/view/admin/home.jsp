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
                        {%if brands%}
                        <li class="breadcrumb-item active">Brand</li>
                        {% else %}
                        <li class="breadcrumb-item active">Category</li>
                        {% endif %}
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                 <div class="col-md-3"></div>
                <div class="col-md-6">
                    <!-- /.card -->
                    <div class="card">
                        <div class="card-header">

                            <h3 class="card-title">MANAGE BRAND</h3>
                            {% else %}
                            <h3 class="card-title">MANAGE CATEGORY</h3>


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
                                            Delete
                                        </button>
                                    </td>
                                </tr>
                                <!-- Modal -->
                                <div class="modal fade" id="staticBackdrop-{{brand.id}}" data-backdrop="static"
                                     data-keyboard="false"
                                     tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="staticBackdropLabel1">{{brand.name}}</h5>
                                                <button type="button" class="close" data-dismiss="modal"
                                                        aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <span class="text-danger">are you sure delete {{brand.name}}</span>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-warning  btn-secondary"
                                                        data-dismiss="modal">
                                                    Cancel
                                                </button>
                                                <form action="{{url_for('deletebrand', id=brand.id)}}" method="POST">
                                                    <button type="submit" class="btn btn-danger">Delete</button>
                                                </form>

                                            </div>
                                        </div>
                                    </div>
                                </div>

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
                                </tbody>
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
                 <div class="col-md-3"></div>
            </div>
        </div>

    </section>
    <!-- /.content -->
</div>
