<?php
	session_start();
 include('../db/connect.php'); 
?>
<?php
	// session_destroy();
	// unset('dangnhap');
	if(isset($_POST['dangnhap'])) {
		$taikhoan = $_POST['taikhoan'];
		$matkhau = md5($_POST['matkhau']);
		if($taikhoan=='' || $matkhau ==''){
			echo '<p>Xin nhập đủ</p>';
		}else{
			$sql_select_admin = mysqli_query($con,"SELECT * FROM tbl_admin WHERE email='$taikhoan' AND password='$matkhau' LIMIT 1");
			$count = mysqli_num_rows($sql_select_admin);
			$row_dangnhap = mysqli_fetch_array($sql_select_admin);
			if($count>0){
				$_SESSION['dangnhap'] = $row_dangnhap['admin_name'];
				$_SESSION['admin_id'] = $row_dangnhap['admin_id'];
				header('Location: dashboard.php');
			}else{
				echo '<p>Tài khoản hoặc mật khẩu sai</p>';
			}
		}
	}
?>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Đăng nhập Admin</title>
	<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="../css/admin-.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>
<div class="container">
    <div class="row">
		<div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
			<div class="card card-signin my-5">
				<div class="card-body">
					<h5 class="card-title text-center">Quản Trị Viên</h5>
					<form class="form-signin" action="" method="POST">
						<div class="form-label-group">
							<input name="taikhoan" type="email" id="inputEmail" class="form-control" placeholder="Email" required autofocus>
							<label for="inputEmail">Email</label>
						</div>

						<div class="form-label-group">
							<input name="matkhau" type="password" id="inputPassword" class="form-control" placeholder="Password" required>
							<label for="inputPassword">Password</label>
						</div>

						<div class="custom-control custom-checkbox mb-3">
							<input type="checkbox" class="custom-control-input" id="customCheck1">
							<label class="custom-control-label" for="customCheck1">Nhớ mật khẩu</label>
						</div>
						<button name="dangnhap" class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Đăng nhập</button>
					</form>
				</div>
			</div>
		</div>
    </div> <!--row-->
</div> <!--container-->
	<!-- <h2 align="center">Đăng nhập Admin</h2>
	<div class="col-md-6">
	<div class="form-group">
		<form action="" method="POST">
		<label>Tài khoản</label>
		<input type="text" name="taikhoan" placeholder="Điền Email" class="form-control"><br>
		<label>Mật khẩu</label>
		<input type="password" name="matkhau" placeholder="Điền mật khẩu" class="form-control"><br>
		<input type="submit" name="dangnhap" class="btn btn-primary" value="Đăng nhập Admin">
		</form>
	</div>
	</div> -->
</body>
</html>