<?php 
		$sql_category = mysqli_query($con,'SELECT * FROM tbl_category ORDER BY category_id DESC');
	?>
<div class="navbar" style="padding: 0px !important">
	<nav class="navbar navbar-expand-lg navbar-light bg-light" style="width: 100% !important">
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto text-center mr-xl-5" style="margin:0 auto !important">
				<?php 
					$sql_category_danhmuc = mysqli_query($con,'SELECT * FROM tbl_category ORDER BY category_id DESC');
					while($row_category_danhmuc = mysqli_fetch_array($sql_category_danhmuc)){
				?>
				<li class="nav-item  mr-lg-2 mb-lg-0 mb-2">
					<a class="nav-link " href="?quanly=danhmuc&id=<?php echo $row_category_danhmuc['category_id'] ?>"
						role="button" aria-haspopup="true" aria-expanded="false">
						<?php echo $row_category_danhmuc['category_name'] ?>
					</a>
				</li>
				<?php } ?>
				<li class="nav-item dropdown mr-lg-2 mb-lg-0 mb-2">
					<?php
						$sql_danhmuctin = mysqli_query($con,"SELECT * FROM tbl_danhmuc_tin ORDER BY danhmuctin_id DESC"); 
					?>
					<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">
						Tin tức
					</a>
					<div class="dropdown-menu">
						<?php
							while($row_danhmuctin = mysqli_fetch_array($sql_danhmuctin)){ 
						?>
						<a class="dropdown-item"
							href="?quanly=tintuc&id_tin=<?php echo $row_danhmuctin['danhmuctin_id'] ?>"><?php echo $row_danhmuctin['tendanhmuc'] ?></a>
						<?php } ?>
					</div>
				</li>
				<li class="nav-item dropdown mr-lg-2 mb-lg-0 mb-2">
					<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">
						Trang
					</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="product.html">Sản phẩm mới</a>

						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="checkout.html">Kiểm tra hàng</a>
						<a class="dropdown-item" href="payment.html">Thanh toán</a>
					</div>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="contact.html">Liên hệ</a>
				</li>
				<li>
					<div class="col-2 top_nav_right text-center mt-sm-0 mt-2">
						<div class="wthreecartaits wthreecartaits2 cart cart box_1">
							<form action="#" method="post" class="last">
								<input type="hidden" name="cmd" value="_cart">
								<input type="hidden" name="display" value="1">
								<a  style="color: black" href="index.php?quanly=giohang#" class="btn w3view-cart" type="submit" name="submit" value="">
									<i class="fas fa-cart-arrow-down"></i> Giỏ hàng
							</a>
							</form>
						</div>
					</div>
				</li>
				<li>
					<form class="form-inline" action="index.php?quanly=timkiem" method="POST">
						<input class="form-control mr-sm-2" name="search_product" type="search"
							placeholder="Tìm kiếm sản phẩm" aria-label="Search" required>
						<button class="btn btn-success my-2 my-sm-0" name="search_button" type="submit">Tìm kiếm</button>
					</form>
				</li>
				
			</ul>
		</div>
	</nav>
</div>