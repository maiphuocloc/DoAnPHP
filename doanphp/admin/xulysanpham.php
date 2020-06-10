<?php
	include('../db/connect.php');
?>
<?php
	if(isset($_POST['themsanpham'])){
		$tensanpham = $_POST['tensanpham'];
		$hinhanh = $_FILES['hinhanh']['name'];
		
		$soluong = $_POST['soluong'];
		$gia = $_POST['giasanpham'];
		$giakhuyenmai = $_POST['giakhuyenmai'];
		$danhmuc = $_POST['danhmuc'];
		$chitiet = $_POST['chitiet'];
		$mota = $_POST['mota'];
		$path = '../uploads/';
		
		$hinhanh_tmp = $_FILES['hinhanh']['tmp_name'];
		$sql_insert_product = mysqli_query($con,"INSERT INTO tbl_sanpham(sanpham_name,sanpham_chitiet,sanpham_mota,sanpham_gia,sanpham_giakhuyenmai,sanpham_soluong,sanpham_image,category_id) values ('$tensanpham','$chitiet','$mota','$gia','$giakhuyenmai','$soluong','$hinhanh','$danhmuc')");
		move_uploaded_file($hinhanh_tmp,$path.$hinhanh);
	}elseif(isset($_POST['capnhatsanpham'])) {
		$id_update = $_POST['id_update'];
		$tensanpham = $_POST['tensanpham'];
		$hinhanh = $_FILES['hinhanh']['name'];
		$hinhanh_tmp = $_FILES['hinhanh']['tmp_name'];
		$soluong = $_POST['soluong'];
		$gia = $_POST['giasanpham'];
		$giakhuyenmai = $_POST['giakhuyenmai'];
		$danhmuc = $_POST['danhmuc'];
		$chitiet = $_POST['chitiet'];
		$mota = $_POST['mota'];
		$path = '../uploads/';
		if($hinhanh==''){
			$sql_update_image = "UPDATE tbl_sanpham SET sanpham_name='$tensanpham',sanpham_chitiet='$chitiet',sanpham_mota='$mota',sanpham_gia='$gia',sanpham_giakhuyenmai='$giakhuyenmai',sanpham_soluong='$soluong',category_id='$danhmuc' WHERE sanpham_id='$id_update'";
		}else{
			move_uploaded_file($hinhanh_tmp,$path.$hinhanh);
			$sql_update_image = "UPDATE tbl_sanpham SET sanpham_name='$tensanpham',sanpham_chitiet='$chitiet',sanpham_mota='$mota',sanpham_gia='$gia',sanpham_giakhuyenmai='$giakhuyenmai',sanpham_soluong='$soluong',sanpham_image='$hinhanh',category_id='$danhmuc' WHERE sanpham_id='$id_update'";
		}
		mysqli_query($con,$sql_update_image);
	}
	
?> 
<?php
	if(isset($_GET['xoa'])){
		$id= $_GET['xoa'];
		$sql_xoa = mysqli_query($con,"DELETE FROM tbl_sanpham WHERE sanpham_id='$id'");
		header('Location:xulysanpham.php');
	} 
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Sản phẩm</title>
	<!-- <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" /> -->
	<link href="../css/admin-dashboard.css" rel="stylesheet" type="text/css" media="all" />
	<link href="../css/Chart.css" rel="stylesheet" type="text/css" media="all" />

	

	<script src="../js/Chart.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



</head>
<body>	
	<div class="modal fade" id="myModal1" role="dialog">
		<div class="modal-dialog modal-sm modal-dialog-centered">
		<div class="modal-content" style="width: 600px; height: 630px; margin-left:-130px">
			<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h4 class="modal-title">Thêm sản phẩm</h4>
			</div>
			<div class="modal-body">	
					<div>	
					<form action="" method="POST" enctype="multipart/form-data">
						<label>Tên sản phẩm</label>
						<input type="text" class="form-control" name="tensanpham" placeholder="Tên sản phẩm"><br>
						<label>Hình ảnh</label>
						<input type="file" class="form-control" name="hinhanh"><br>	
						<div class=row>
							<div class="col-md-6">
								<label>Giá</label>
								<input type="text" class="form-control" name="giasanpham" placeholder="Giá sản phẩm"><br>
								<label>Số lượng</label>
								<input type="text" class="form-control" name="soluong" placeholder="Số lượng"><br>                 
							</div>
							<div class="col-md-6">
							<label>Giá khuyến mãi</label>
								<input type="text" class="form-control" name="giakhuyenmai" placeholder="Giá khuyến mãi"><br>                         
								<label>Danh mục</label>
								<?php
								$sql_danhmuc = mysqli_query($con,"SELECT * FROM tbl_category ORDER BY category_id DESC"); 
								?>
								<select name="danhmuc" class="form-control">
									<option value="0">-----Chọn danh mục-----</option>
									<?php
									while($row_danhmuc = mysqli_fetch_array($sql_danhmuc)){
									?>
									<option value="<?php echo $row_danhmuc['category_id'] ?>"><?php echo $row_danhmuc['category_name'] ?></option>
									<?php 
									}
									?>
								</select><br>
							</div>
						</div>
						<label>Mô tả</label>
						<textarea class="form-control" name="mota"></textarea><br>
						<label>Chi tiết</label>
						<textarea class="form-control" name="chitiet"></textarea><br>
						
						<input type="submit" name="themsanpham" style="margin-left: 210px;" value="Thêm sản phẩm" class="btn btn-success">
					</form>
					</div>
		
				
			</div>
		</div>
		</div>
	</div>
	<div class="modal fade" id="myModal2" role="dialog">
		<div class="modal-dialog modal-sm modal-dialog-centered">
		<div class="modal-content" style="width: 600px; height: 1050px; padding: 10px 30px ; margin-left:-130px">
			<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h4 class="modal-title">Cập nhật sản phẩm</h4>
			</div>
			<div class="modal-body">	
			</div>
		</div>
		</div>
	</div>



	<div class="container">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">
						</h3>
					</div>

					<div class="panel-body">
						<div class="row">
							<div style="text-align:center">
							<a href="xulydonhang.php" class="btn btn-danger btn-lg" role="button"><span class="glyphicon glyphicon-list-alt"></span> <br/>Đơn hàng</a>
							<a href="xulydanhmuc.php" class="btn btn-warning btn-lg" role="button"><span class="glyphicon glyphicon-bookmark"></span> <br/>Danh mục</a>
							<a href="xulysanpham.php" class="btn btn-primary btn-lg" role="button"><span class="glyphicon glyphicon-signal"></span> <br/>Sản phẩm</a>
							<a href="xulykhachhang.php" class="btn btn-success btn-lg" role="button"><span class="glyphicon glyphicon-comment"></span> <br/>Lịch sử</a>
							</div>
						</div>	 						 										
						<div >
							<h4 style="float:left">Liệt kê sản phẩm</h4>
							<?php
							$sql_select_sp = mysqli_query($con,"SELECT * FROM tbl_sanpham,tbl_category WHERE tbl_sanpham.category_id=tbl_category.category_id ORDER BY tbl_sanpham.sanpham_id DESC"); 
							?> 
							<button type="button" class="btn btn-info btn-sm" style="float:right" data-toggle="modal" data-target="#myModal1">Thêm</button>
							<table class="table table-bordered ">
								<tr>
									<th>Thứ tự</th>
									<th>Tên sản phẩm</th>
									<th>Hình ảnh</th>
									<th>Số lượng</th>
									<th>Danh mục</th>
									<th>Giá sản phẩm</th>
									<th>Giá khuyến mãi</th>
									<th>Quản lý</th>
								</tr>
								<?php
								$i = 0;
								while($row_sp = mysqli_fetch_array($sql_select_sp)){ 
									$i++;
								?> 
								<tr>
									<td style="text-align: center;"><?php echo $i ?></td>
									<td style="width:400px"><?php echo $row_sp['sanpham_name'] ?></td>
									<td><img src="../uploads/<?php echo $row_sp['sanpham_image'] ?>" height="100" width="80"></td>
									<td style="text-align: center;"><?php echo $row_sp['sanpham_soluong'] ?></td>
									<td style="text-align: center;"><?php echo $row_sp['category_name'] ?></td>
									<td style="text-align: center;"><?php echo number_format($row_sp['sanpham_gia']).'vnđ' ?></td>
									<td style="text-align: center;"><?php echo number_format($row_sp['sanpham_giakhuyenmai']).'vnđ' ?></td>
									<td style="text-align: center;"><a href="?xoa=<?php echo $row_sp['sanpham_id'] ?>">Xóa</a> <hr> <a href="capnhatsanpham.php?quanly=capnhat&capnhat_id=<?php echo $row_sp['sanpham_id'] ?>" data-toggle="modal" data-target="#myModal2">Cập nhật</a></td>
								</tr>
							<?php
								} 
								?> 
							</table>
						</div>
					</div>
					<div class="row">
					<div class="col-md-12" style="text-align: center">
						<nav aria-label="Page navigation example ">
							<ul class="pagination">
								<li class="page-item">
									<a class="page-link" href="#" aria-label="Previous">
										<span aria-hidden="true">&laquo;</span>
									</a>
								</li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item">
									<a class="page-link" href="#" aria-label="Next">
										<span aria-hidden="true">&raquo;</span>
									</a>
								</li>
							</ul>
						</nav>
					</div>
				</div>		
	</div>

	
</body>
</html>