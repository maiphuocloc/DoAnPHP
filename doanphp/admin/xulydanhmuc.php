<?php
	include('../db/connect.php');
?>
<?php
	if(isset($_POST['themdanhmuc'])){
		$tendanhmuc = $_POST['danhmuc'];
		$sql_insert = mysqli_query($con,"INSERT INTO tbl_category(category_name) values ('$tendanhmuc')");
	}elseif(isset($_POST['capnhatdanhmuc'])){
		$id_post = $_POST['id_danhmuc'];
		$tendanhmuc = $_POST['danhmuc'];
		$sql_update = mysqli_query($con,"UPDATE tbl_category SET category_name='$tendanhmuc' WHERE category_id='$id_post'");
		header('Location:xulydanhmuc.php');
	}
	if(isset($_GET['xoa'])){
		$id= $_GET['xoa'];
		$sql_xoa = mysqli_query($con,"DELETE FROM tbl_category WHERE category_id='$id'");
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Danh mục</title>
	

	

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

	<script src="../js/Chart.js"></script>
</head>
<body style="padding-top: 20px;">

	 <!-- Modal -->
	 <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog modal-sm modal-dialog-centered">
      <div class="modal-content" style="margin-top:200px">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Thêm danh mục</h4>
        </div>
        <div class="modal-body">
			<form action="" method="POST">
				<input type="text" class="form-control" name="danhmuc" placeholder="Tên danh mục"><br>
				
				<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
				<input type="submit" class="btn btn-primary" name="themdanhmuc" value="Thêm" class="btn btn-default">
        		</div>
			</form>
			
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
						
							<div class="col-xs-12 col-md-12" style="text-align: center">
							<a href="xulydonhang.php" class="btn btn-danger btn-lg" role="button"><span class="glyphicon glyphicon-list-alt"></span> <br/>Đơn hàng</a>
							<a href="xulydanhmuc.php" class="btn btn-warning btn-lg" role="button"><span class="glyphicon glyphicon-bookmark"></span> <br/>Danh mục</a>
							<a href="xulysanpham.php" class="btn btn-primary btn-lg" role="button"><span class="glyphicon glyphicon-signal"></span> <br/>Sản phẩm</a>
							<a href="xulykhachhang.php" class="btn btn-success btn-lg" role="button"><span class="glyphicon glyphicon-comment"></span> <br/>Lịch sử</a>
							</div>
						</div>
						

						<div>

							<?php
							if(isset($_GET['quanly'])=='capnhat'){
								$id_capnhat = $_GET['id'];
								$sql_capnhat = mysqli_query($con,"SELECT * FROM tbl_category WHERE category_id='$id_capnhat'");
								$row_capnhat = mysqli_fetch_array($sql_capnhat);
								?>
								<div class="col-md-4">
								<h4>Cập nhật danh mục</h4>
								<label>Tên danh mục</label>
								<form action="" method="POST">
									<input type="text" class="form-control" name="danhmuc" value="<?php echo $row_capnhat['category_name'] ?>"><br>
									<input type="hidden" class="form-control" name="id_danhmuc" value="<?php echo $row_capnhat['category_id'] ?>">

									<input type="submit" name="capnhatdanhmuc" value="Cập nhật danh mục" class="btn btn-default">
								</form>
								</div>
							<?php
							}else{
								?>
								<div class="row">
								
								</div>
								<?php
							} 
							
								?>
								</br>
							<div class="row">
								<div>
									<div class="col-md-6">
										<h4>Liệt kê danh mục</h4>
									</div>
									<div class="col-md-6" style="text-align-last: end">
										<button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#myModal1">Thêm</button>
									</div>
									
								</div>
								
								<?php
								$sql_select = mysqli_query($con,"SELECT * FROM tbl_category ORDER BY category_id DESC"); 
								?>
								<table class="table table-bordered ">
									<tr>
										<th>Thứ tự</th>
										<th>Tên danh mục</th>
										<th>Quản lý</th>
									</tr>
									<?php
									$i = 0;
									while($row_category = mysqli_fetch_array($sql_select)){ 
										$i++;
									?>
									<tr>
										<td><?php echo $i; ?></td>
										<td><?php echo $row_category['category_name'] ?></td>
										<td><a href="?xoa=<?php echo $row_category['category_id'] ?>">Xóa</a> || <a href="?quanly=capnhat&id=<?php echo $row_category['category_id'] ?>">Cập nhật</a></td>
									</tr>
									<?php
									} 
									?>
								</table>
							</div>  <!-- col8-->

						</div>


					</div> <!--panel-body-->

				</div> <!--panel-primary-->
	</div> <!--container-->

</body>
</html>