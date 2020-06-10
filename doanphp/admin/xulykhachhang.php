<?php
	include('../db/connect.php');
?>
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
	<title>Khách hàng</title>
	<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

	<link href="../css/admin-dashboard.css" rel="stylesheet" type="text/css" media="all" />
	<link href="../css/Chart.css" rel="stylesheet" type="text/css" media="all" />

	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

	<script src="../js/Chart.js"></script>

</head>
<body>
	

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
							<a href="dashboard.php" class="btn btn-info btn-lg" role="button"><span class="glyphicon glyphicon-list-alt"></span> <br/>Thống kê</a>
							<a href="xulydonhang.php" class="btn btn-danger btn-lg" role="button"><span class="glyphicon glyphicon-list-alt"></span> <br/>Đơn hàng</a>
							<a href="xulydanhmuc.php" class="btn btn-warning btn-lg" role="button"><span class="glyphicon glyphicon-bookmark"></span> <br/>Danh mục</a>
							<a href="xulysanpham.php" class="btn btn-primary btn-lg" role="button"><span class="glyphicon glyphicon-signal"></span> <br/>Sản phẩm</a>
							<a href="xulykhachhang.php" class="btn btn-success btn-lg" role="button"><span class="glyphicon glyphicon-comment"></span> <br/>Lịch sử</a>
							</div>
						</div>

						<div>
							<div class="col-md-12">
								<h4>Khách hàng</h4>
								<?php
								$sql_select_khachhang = mysqli_query($con,"SELECT * FROM tbl_khachhang,tbl_giaodich WHERE tbl_khachhang.khachhang_id=tbl_giaodich.khachhang_id GROUP BY tbl_giaodich.magiaodich ORDER BY tbl_khachhang.khachhang_id DESC"); 
								?> 
								<table class="table table-bordered ">
									<tr>
										<th>Thứ tự</th>
										<th>Tên khách hàng</th>
										<th>Số điện thoại</th>
										<th>Địa chỉ</th>
										<th>Email</th>
										<th>Ngày mua</th>
										<th>Quản lý</th>
									</tr>
									<?php
									$i = 0;
									while($row_khachhang = mysqli_fetch_array($sql_select_khachhang)){ 
										$i++;
									?> 
									<tr>
										<td><?php echo $i; ?></td>
										
										<td><?php echo $row_khachhang['name']; ?></td>
										<td><?php echo $row_khachhang['phone']; ?></td>
										<td><?php echo $row_khachhang['address']; ?></td>
										
										<td><?php echo $row_khachhang['email'] ?></td>
										<td><?php echo $row_khachhang['ngaythang'] ?></td>
										<td><a href="?quanly=xemgiaodich&khachhang=<?php echo $row_khachhang['magiaodich'] ?>">Xem giao dịch</a></td>
									</tr>
									<?php
									} 
									?> 
								</table>
							</div>

							<div class="col-md-12">
								<h4>Liệt kê lịch sử đơn hàng</h4>
								<?php
								if(isset($_GET['khachhang'])){
									$magiaodich = $_GET['khachhang'];
								}else{
									$magiaodich = '';
								}
								$sql_select = mysqli_query($con,"SELECT * FROM tbl_giaodich,tbl_khachhang,tbl_sanpham WHERE tbl_giaodich.sanpham_id=tbl_sanpham.sanpham_id AND tbl_khachhang.khachhang_id=tbl_giaodich.khachhang_id AND tbl_giaodich.magiaodich='$magiaodich' ORDER BY tbl_giaodich.giaodich_id DESC"); 
								?> 
								<table class="table table-bordered ">
									<tr>
										<th>Thứ tự</th>
										<th>Mã giao dịch</th>
										<th>Tên sản phẩm</th>
										<th>Ngày đặt</th>
										
									</tr>
									<?php
									$i = 0;
									while($row_donhang = mysqli_fetch_array($sql_select)){ 
										$i++;
									?> 
									<tr>
										<td><?php echo $i; ?></td>
										
										<td><?php echo $row_donhang['magiaodich']; ?></td>
									
										<td><?php echo $row_donhang['sanpham_name']; ?></td>
										
										<td><?php echo $row_donhang['ngaythang'] ?></td>
									
									
									</tr>
									<?php
									} 
									?> 
								</table>
							</div>
						
						</div>
						
					</div> <!--panel-body-->

				</div> <!--panel-primary-->
			</div> <!--colmd12-->
		</div> <!--row-->
	</div> <!--container-->


	<div class="container-fluid">
		<div class="row">
			
			

		</div> <!--row-->
	</div> <!--container-->
	
</body>
</html>