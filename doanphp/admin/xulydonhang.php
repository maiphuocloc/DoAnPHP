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
<?php 
if(isset($_POST['capnhatdonhang'])){
	$xuly = $_POST['xuly'];
	$mahang = $_POST['mahang_xuly'];
	$sql_update_donhang = mysqli_query($con,"UPDATE tbl_donhang SET tinhtrang='$xuly' WHERE mahang='$mahang'");
	$sql_update_giaodich = mysqli_query($con,"UPDATE tbl_giaodich SET tinhtrangdon='$xuly' WHERE magiaodich='$mahang'");
}

?>
<?php
	if(isset($_GET['xoadonhang'])){
		$mahang = $_GET['xoadonhang'];
		$sql_delete = mysqli_query($con,"DELETE FROM tbl_donhang WHERE mahang='$mahang'");
		header('Location:xulydonhang.php');
	} 
	if(isset($_GET['xacnhanhuy'])&& isset($_GET['mahang'])){
		$huydon = $_GET['xacnhanhuy'];
		$magiaodich = $_GET['mahang'];
	}else{
		$huydon = '';
		$magiaodich = '';
	}
	$sql_update_donhang = mysqli_query($con,"UPDATE tbl_donhang SET huydon='$huydon' WHERE mahang='$magiaodich'");
	$sql_update_giaodich = mysqli_query($con,"UPDATE tbl_giaodich SET huydon='$huydon' WHERE magiaodich='$magiaodich'");

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Đơn hàng</title>
	<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="../css/admin-dashboard.css" rel="stylesheet" type="text/css" media="all" />
	<link href="../css/Chart.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script src="../js/Chart.js"></script>
</head>
<body>
<div class="modal fade" id="myModal1" role="dialog">
		<div class="modal-dialog modal-sm modal-dialog-centered">
		<div class="modal-content" style="width:auto; height: auto; padding: 10px 30px ; margin-left:-230px">
			<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h4 class="modal-title">Cập nhật sản phẩm</h4>
			</div>
			<div class="modal-body">	
			</div>
		</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row">

		</div>
	</div>


	<div class="container">

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
						<?php
							if(isset($_GET['quanly'])=='xemdonhang'){
								$mahang = $_GET['mahang'];
								$sql_chitiet = mysqli_query($con,"SELECT * FROM tbl_donhang,tbl_sanpham WHERE tbl_donhang.sanpham_id=tbl_sanpham.sanpham_id AND tbl_donhang.mahang='$mahang'");
								?>
								<div >
								<h4>Xem chi tiết đơn hàng</h4>
							<form action="" method="POST">
								<table class="table table-bordered ">
									<tr>
										<th>Thứ tự</th>
										<th>Mã hàng</th>
										<th>Tên sản phẩm</th>
										<th>Số lượng</th>
										<th>Giá</th>
										<th>Tổng tiền</th>
										<th>Ngày đặt</th>

										
										<!-- <th>Quản lý</th> -->
									</tr>
									<?php
									$i = 0;
									while($row_donhang = mysqli_fetch_array($sql_chitiet)){ 
										$i++;
									?> 
									<tr>
										<td><?php echo $i; ?></td>
										<td><?php echo $row_donhang['mahang']; ?></td>
										
										<td><?php echo $row_donhang['sanpham_name']; ?></td>
										<td><?php echo $row_donhang['soluong']; ?></td>
										<td><?php echo $row_donhang['sanpham_giakhuyenmai']; ?></td>
										<td><?php echo number_format($row_donhang['soluong']*$row_donhang['sanpham_giakhuyenmai']).'vnđ'; ?></td>
										
										<td><?php echo $row_donhang['ngaythang'] ?></td>
										<input type="hidden" name="mahang_xuly" value="<?php echo $row_donhang['mahang'] ?>">

										<!-- <td><a href="?xoa=<?php echo $row_donhang['donhang_id'] ?>">Xóa</a> || <a href="?quanly=xemdonhang&mahang=<?php echo $row_donhang['mahang'] ?>">Xem đơn hàng</a></td> -->
									</tr>
									<?php
									} 
									?> 
								</table>

								<select class="form-control" style="height:30px" name="xuly">
									<option value="1">Đã xử lý | Giao hàng</option>
									<option value="0">Chưa xử lý</option>
								</select><br>
								
								<input type="submit" style="width:170px" value="Cập nhật đơn hàng" name="capnhatdonhang" class="btn btn-success">
							</form>
								</div>  
							<?php
							}
							?> 
							<div >
								<h4>Liệt kê đơn hàng</h4>

								<?php
								$sql_select = mysqli_query($con,"SELECT * FROM tbl_sanpham,tbl_khachhang,tbl_donhang WHERE tbl_donhang.sanpham_id=tbl_sanpham.sanpham_id AND tbl_donhang.khachhang_id=tbl_khachhang.khachhang_id GROUP BY mahang "); 
								?> 
								<table class="table table-bordered ">
									<tr>
										<th>Thứ tự</th>
										<th>Mã hàng</th>
										<th>Tình trạng đơn hàng</th>
										<th>Tên khách hàng</th>
										<th>Ngày đặt</th>
										<th>Ghi chú</th>
										<th>Hủy đơn</th>
										<th>Quản lý</th>
									</tr>
									<?php
									$i = 0;
									while($row_donhang = mysqli_fetch_array($sql_select)){ 
										$i++;
									?> 
									<tr>
										<td><?php echo $i; ?></td>
										
										<td><?php echo $row_donhang['mahang']; ?></td>
										<td><?php
											if($row_donhang['tinhtrang']==0){
												echo 'Chưa xử lý';
											}else{
												echo 'Đã xử lý';
											}
										?></td>
										<td><?php echo $row_donhang['name']; ?></td>
										
										<td><?php echo $row_donhang['ngaythang'] ?></td>
										<td><?php echo $row_donhang['note'] ?></td>
										<td><?php if($row_donhang['huydon']==0){ }elseif($row_donhang['huydon']==1){
											echo '<a href="xulydonhang.php?quanly=xemdonhang&mahang='.$row_donhang['mahang'].'&xacnhanhuy=2">Xác nhận hủy đơn</a>';
										}else{
											echo 'Đã hủy';
										} 
										?></td>

										<td><a href="?xoadonhang=<?php echo $row_donhang['mahang'] ?>">Xóa</a> || <a href="xemdonhang.php?quanly=xemdonhang&mahang=<?php echo $row_donhang['mahang'] ?> " data-toggle="modal" data-target="#myModal1">Xem </a></td>
									</tr>
									<?php
									} 
									?> 
								</table>
							</div>
						</div>
						

					</div> <!--panel-body-->

				</div> <!--panel-primary-->

	</div> <!--container-->
	
</body>
</html>