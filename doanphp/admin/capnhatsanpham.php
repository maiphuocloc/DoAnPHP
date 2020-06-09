<?php
	include('../db/connect.php');
?>
<?php
if(isset($_POST['capnhatsanpham'])) {
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
    <div >
		<?php	if(isset($_GET['quanly'])=='capnhat'){	
				$id_capnhat = $_GET['capnhat_id'];
				$sql_capnhat = mysqli_query($con,"SELECT * FROM tbl_sanpham WHERE sanpham_id='$id_capnhat'");
				$row_capnhat = mysqli_fetch_array($sql_capnhat);
				$id_category_1 = $row_capnhat['category_id'];
				?>
				<div >
				<h3>Cập nhật sản phẩm</h3>
				
				<form action="" method="POST" enctype="multipart/form-data">
					<label>Tên sản phẩm</label>
					<input type="text" class="form-control" name="tensanpham" value="<?php echo $row_capnhat['sanpham_name'] ?>"><br>
					<input type="hidden" class="form-control" name="id_update" value="<?php echo $row_capnhat['sanpham_id'] ?>">
					<label>Hình ảnh</label>
					<input type="file" class="form-control" name="hinhanh"><br>
                    <img src="../uploads/<?php echo $row_capnhat['sanpham_image'] ?>" height="80" width="80"><br>
                    <div class=row>
                        <div class="col-md-6">
                            <label>Giá</label>
                            <input type="text" class="form-control" name="giasanpham" value="<?php echo $row_capnhat['sanpham_gia'] ?>"><br>
                            <label>Số lượng</label>
                            <input type="text" class="form-control" name="soluong" value="<?php echo $row_capnhat['sanpham_soluong'] ?>"><br>                  
                        </div>
                        <div class="col-md-6">
                            <label>Giá khuyến mãi</label>
                            <input type="text" class="form-control" name="giakhuyenmai" value="<?php echo $row_capnhat['sanpham_giakhuyenmai'] ?>"><br>                           
                            <label>Danh mục</label>
                            <?php
                            $sql_danhmuc = mysqli_query($con,"SELECT * FROM tbl_category ORDER BY category_id DESC"); 
                            ?>
                            <select name="danhmuc" class="form-control">
                                <option value="0">-----Chọn danh mục-----</option>
                                <?php
                                while($row_danhmuc = mysqli_fetch_array($sql_danhmuc)){
                                    if($id_category_1==$row_danhmuc['category_id']){
                                ?>
                                <option selected value="<?php echo $row_danhmuc['category_id'] ?>"><?php echo $row_danhmuc['category_name'] ?></option>
                                <?php 
                                    }else{
                                ?>
                                <option value="<?php echo $row_danhmuc['category_id'] ?>"><?php echo $row_danhmuc['category_name'] ?></option>
                                <?php
                                    }
                                }
                                ?>
                            </select><br>
                        </div>
                    </div>
					<label>Mô tả</label>
					<textarea class="form-control" rows="10" name="mota"><?php echo $row_capnhat['sanpham_mota'] ?></textarea><br>
					<label>Chi tiết</label>
					<textarea class="form-control" rows="10" name="chitiet"><?php echo $row_capnhat['sanpham_chitiet'] ?></textarea><br>
					
					<input type="submit" name="capnhatsanpham" style="margin-left: 200px;" value="Cập nhật sản phẩm" class="btn btn-success">
				</form>
				</div>
                    <?php } ?>
    </div>
</body>
</html>