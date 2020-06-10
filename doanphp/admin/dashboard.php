<?php
	session_start();
	if(!isset($_SESSION['dangnhap'])){
		header('Location: index.php');
	} 
	if(isset($_GET['login'])){
 	$dangxuat = $_GET['login'];
	 }else{
	 	$dangxuat = '';
	 }
	 if($dangxuat=='dangxuat'){
	 	session_destroy();
	 	header('Location: index.php');
	 }
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Welcome Admin</title>
	<!-- <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" /> -->

	<link href="../css/admin-dashboard.css" rel="stylesheet" type="text/css" media="all" />
	<link href="../css/Chart.css" rel="stylesheet" type="text/css" media="all" />

	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

	<script src="../js/Chart.js"></script>



</head>
<body>

	<!-- <p>Xin chào : <a href="?login=dangxuat">Đăng xuất</a></p>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <div class="collapse navbar-collapse" id="navbarNav">
	    <ul class="navbar-nav">
	      <li class="nav-item active">
	        <a class="nav-link" href="#">Đơn hàng <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="xulydanhmuc.php">Danh mục</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="xulysanpham.php">Sản phẩm</a>
	      </li>
	       <li class="nav-item">
	        <a class="nav-link" href="#">Khách hàng</a>
	      </li>
	      
	    </ul>
	  </div>
	</nav> -->

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-primary">

					<div class="panel-heading">
						<h3 class="panel-title">
							<span class="glyphicon glyphicon-dashboard"></span> Xin chào: <?php echo $_SESSION['dangnhap'] ?>
						</h3>
					</div>

					<div class="panel-body">
						<div class="row">
						<div class="col-xs-12 col-md-12" style="text-align: center">
						<a href="xulydonhang.php" class="btn btn-danger btn-lg" role="button"><span class="glyphicon glyphicon-list-alt"></span> <br/>Đơn hàng</a>
						<a href="xulydanhmuc.php" class="btn btn-warning btn-lg" role="button"><span class="glyphicon glyphicon-bookmark"></span> <br/>Danh mục</a>
						<a href="xulysanpham.php" class="btn btn-primary btn-lg" role="button"><span class="glyphicon glyphicon-signal"></span> <br/>Sản phẩm</a>
						<a href="xulykhachhang.php" class="btn btn-success btn-lg" role="button"><span class="glyphicon glyphicon-comment"></span> <br/>Lịch sử</a>
						</div>
						</div>

						<canvas id="myChart" width="400" height="130"></canvas>
						
						<a href="#" class="btn btn-success btn-lg btn-block" role="button"><span class="glyphicon glyphicon-globe"></span> Website khách hàng</a>
					</div> <!--panel-body-->

				</div> <!--panel-primary-->
			</div> <!--colmd12-->
		</div> <!--row-->
	</div> <!--container-->

</body>
<script>
var ctx = document.getElementById('myChart').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ['5/6/2020', '6/6/2020', '7/6/2020', '8/6/2020', '9/6/2020', '10/6/2020'],
        datasets: [{
            label: '# đơn hàng',
            data: [12, 19, 3, 5, 2, 3],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
});
</script>

</html>