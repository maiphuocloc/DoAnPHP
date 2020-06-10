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
<div>
<?php
							if(isset($_GET['quanly'])=='xemdonhang'){
								$mahang = $_GET['mahang'];
								$sql_chitiet = mysqli_query($con,"SELECT * FROM tbl_donhang,tbl_sanpham WHERE tbl_donhang.sanpham_id=tbl_sanpham.sanpham_id AND tbl_donhang.mahang='$mahang'");
								?>
								<div style="width: 700px">
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
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
								<input type="submit" style="width:170px" value="Cập nhật đơn hàng" name="capnhatdonhang" class="btn btn-success">
							</form>
								</div>  
							<?php
							}
							?> 
</div>
</body>
</html>