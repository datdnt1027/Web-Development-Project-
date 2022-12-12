<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/common/taglib.jsp" %>
<c:url value="/templates/vendor/SellerTemplate/" var="template" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<<<<<<< Updated upstream
    <title>Admin</title>
=======
    <title>Admin Page</title>
>>>>>>> Stashed changes
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="${template}admin/plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet"
          href="${template}admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${template}/admin/css/adminlte.min.css  ">

    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <link rel="stylesheet" href="${template}admin/css/style.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="${template}admin/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="${template}admin/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
</head>
<body class="hold-transition sidebar-mini">

<!-- jQuery -->
<script src="${template}admin/plugins/jquery/jquery.min.js'"></script>
<!-- Bootstrap 4 -->
<script src="${template}admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- ChartJS -->
<script src="${template}admin/plugins/chart.js/Chart.min.js"></script>
<!-- jQuery Mapael -->
<script src="${template}admin/plugins/jquery-mousewheel/jquery.mousewheel.js "></script>
<script src="${template}admin/plugins/raphael/raphael.min.js "></script>
<script src="${template}admin/plugins/jquery-mapael/jquery.mapael.min.js "></script>
<script src="s${template}admin/plugins/jquery-mapael/maps/usa_states.min.js "></script>
<!-- PAGE SCRIPTS -->
<script src="${template}admin/js/pages/dashboard2.js "></script>

<!-- DataTables -->
<script src="${template}admin/plugins/datatables/jquery.dataTables.min.js  "></script>
<script src="${template}admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js  "></script>
<script src="${template}admin/plugins/datatables-responsive/js/dataTables.responsive.min.js  "></script>
<script src="${template}admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js  "></script>
<script src="${template}admin/js/adminlte.min.js "></script>
<!-- AdminLTE for demo purposes -->
<script src="${template}admin/js/demo.js "></script>
<script>
      $(function () {
        $("#example1").DataTable({
          "responsive": true,
          "autoWidth": false,
        });
      });
      $(function () {
        $("#example2").DataTable({
          "responsive": true,
          "autoWidth": false,
        });
      });
      $(function () {
        $("#example3").DataTable({
          "responsive": true,
          "autoWidth": false,
        });
      });
</script>
<<<<<<< Updated upstream

<!--===Header===-->
<%@ include file="/common/admin/header.jsp"%>

<!--=== Left Side Bar===-->
<%@ include file="/common/admin/left.jsp" %>
=======
<!--=== Header ===-->
<%@ include file="/common/admin/header.jsp"%>


<!--==== Left Sidebar ===-->
<%@ include file="/common/admin/left.jsp"%>


>>>>>>> Stashed changes

<!-- body -->
<dec:body />
<!-- body -->

<<<<<<< Updated upstream
<!--=== Footer===-->
=======
<!--=== Footer v4 ===-->
>>>>>>> Stashed changes
<jsp:include page="/common/admin/footer.jsp"></jsp:include>

</body>
</html>

