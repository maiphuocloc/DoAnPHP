<?php
	// session_destroy();
	// unset('dangnhap');
	if(isset($_POST['dangnhap_home'])) {
		$taikhoan = $_POST['email_login'];
		$matkhau = md5($_POST['password_login']);
		if($taikhoan=='' || $matkhau ==''){
			echo '<script>alert("Làm ơn không để trống")</script>';
		}else{
			$sql_select_admin = mysqli_query($con,"SELECT * FROM tbl_khachhang WHERE email='$taikhoan' AND password='$matkhau' LIMIT 1");
			$count = mysqli_num_rows($sql_select_admin);
			$row_dangnhap = mysqli_fetch_array($sql_select_admin);
			if($count>0){
				$_SESSION['dangnhap_home'] = $row_dangnhap['name'];
				$_SESSION['khachhang_id'] = $row_dangnhap['khachhang_id'];
				
				header('Location: index.php?quanly=giohang');
			}else{
				echo '<script>alert("Tài khoản mật khẩu sai")</script>';
			}
		}
	}elseif(isset($_POST['dangky'])){
		$name = $_POST['name'];
	 	$phone = $_POST['phone'];
	 	$email = $_POST['email'];
	 	$password = md5($_POST['password']);
	 	$note = $_POST['note'];
	 	$address = $_POST['address'];
	 	$giaohang = $_POST['giaohang'];
 
 		$sql_khachhang = mysqli_query($con,"INSERT INTO tbl_khachhang(name,phone,email,address,note,giaohang,password) values ('$name','$phone','$email','$address','$note','$giaohang','$password')");
 		$sql_select_khachhang = mysqli_query($con,"SELECT * FROM tbl_khachhang ORDER BY khachhang_id DESC LIMIT 1");
 		$row_khachhang = mysqli_fetch_array($sql_select_khachhang);
 		$_SESSION['dangnhap_home'] = $name;
		$_SESSION['khachhang_id'] = $row_khachhang['khachhang_id'];
		
 		header('Location:index.php?quanly=giohang');
	}
?>

<!-- top-header -->
<div class="agile-main-top">
	<div class="container-fluid" style="position: fixed; z-index: 10000; padding:0px">
		<div class="navbar" style="padding: 0px !important; background-color: #f8f8f9 !important;">
			<nav class="navbar navbar-expand-lg navbar-light bg-light" style="float: left;">
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto text-center mr-xl-5" style="margin:0px !important">
						<li class="nav-item active mr-lg-2 mb-lg-0 mb-2">
							<a class="nav-link" href="index.php"
								style="font-size: 30px !important; padding: 0px 10px !important; border: 1px solid;">PHỤ
								KIỆN ĐIỆN THOẠI
								<span class="sr-only">(current)</span>
							</a>
						</li>
					</ul>
				</div>
			</nav>
			<nav class="navbar navbar-expand-lg navbar-light bg-light" style="float: right;">
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto text-center mr-xl-5" style="margin:0px !important">
						<?php if(isset($_SESSION['dangnhap_home'])) { ?>
						<li class="text-center border-right nav-item">
							<a href="index.php?quanly=xemdonhang&khachhang=<?php echo $_SESSION['khachhang_id'] ?>"
								class="nav-link">
								<i class="fas fa-truck mr-2"></i>Xem đơn hàng : <?php echo $_SESSION['dangnhap_home'] ?></a>
						</li>					
						<li class="text-center border-right nav-item">
							<a href="#" data-target="#dangxuat" class="nav-link">
								<i class="fas fa-sign-in-alt mr-2"></i> Đăng xuất </a>
						</li>
						<?php } else { ?>
						<li class="text-center border-right nav-item">
							<a href="#" data-toggle="modal" data-target="#dangnhap" class="nav-link">
								<i class="fas fa-sign-in-alt mr-2"></i> Đăng nhập </a>
						</li>
						<?php } ?>


					</ul>
				</div>
			</nav>
		</div>
		<?php
				include('include/menu.php');
				?>
	</div>
	<div>
	</div>
	<!-- modals -->
	<!-- log in -->
	<div class="modal fade" style="margin-top: 130px" id="dangnhap" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title text-center">Đăng nhập</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="#" method="post">
						<div class="form-group">
							<label class="col-form-label">Email</label>
							<input type="text" class="form-control" placeholder=" " name="email_login" required="">
						</div>
						<div class="form-group">
							<label class="col-form-label">Mật khẩu</label>
							<input type="password" class="form-control" placeholder=" " name="password_login"
								required="">
						</div>
						<div class="right-w3l">
							<input type="submit" class="form-control" name="dangnhap_home" value="Đăng nhập">
						</div>

						<p class="text-center dont-do mt-3">Chưa có tài khoản?
							<a href="#" data-toggle="modal" data-target="#dangky">
								Đăng ký</a>
						</p>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- register -->
	<div class="modal fade" id="dangky" style="margin-top: 120px; margin-left: -50px" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog" role="document" > 
			<div class="modal-content" style="width: 600px">
				<div class="modal-header">
					<h5 class="modal-title">Đăng ký</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="" method="post">
						<div class="row">
							<div class="col-6">
								<div class="form-group">
									<label class="col-form-label">Tên khách hàng</label>
									<input type="text" class="form-control" placeholder=" " name="name" required="">
								</div>
								<div class="form-group">
									<label class="col-form-label">Email</label>
									<input type="email" class="form-control" placeholder=" " name="email" required="">
								</div>
								<div class="form-group">
									<label class="col-form-label">Phone</label>
									<input type="text" class="form-control" placeholder=" " name="phone" required="">
								</div>
							</div>
							<div class="col-6">
								<div class="form-group">
									<label class="col-form-label">Address</label>
									<input type="text" class="form-control" placeholder=" " name="address" required="">
								</div>
								<div class="form-group">
									<label class="col-form-label">Password</label>
									<input type="password" class="form-control" placeholder=" " name="password" required="">
									<input type="hidden" class="form-control" placeholder="" name="giaohang" value="0">
								</div>
								<div class="form-group">
									<label class="col-form-label">Ghi chú</label>
									<textarea class="form-control" name="note"></textarea>
								</div>
							</div>
						</div>
						<div class="right-w3l">
							<input type="submit" class="form-control" name="dangky" value="Đăng ký">
						</div>						
					</form>
				</div>
			</div>
		</div>
	</div>
	
