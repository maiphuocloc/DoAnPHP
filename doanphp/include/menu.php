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