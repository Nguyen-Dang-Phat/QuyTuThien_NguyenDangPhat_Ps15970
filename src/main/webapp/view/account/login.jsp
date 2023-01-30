<%@ page pageEncoding="utf-8" %>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet"
			id="bootstrap-css">
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<!------ Include the above in your HEAD tag ---------->


		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
		<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="utf-8">
			
		</head>

		<body class="login-page sidebar-collapse">

			<!-- End Navbar -->
			<div class="page-header clear-filter" filter-color="orange">

				<div class="content">
					<div class="container">
						<div class="col-md-4 ml-auto mr-auto">
							<div class="card card-login card-plain">			
								<form class="form" action="/account/login" method="post">
									<h1>LOGIN</h1>				
									<div class="card-body">
										<div class="input-group no-border input-lg">
											<div class="input-group-prepend">
												<span class="input-group-text">
													<i class="now-ui-icons users_circle-08"></i>
												</span>
											</div>
											<input type="text" class="form-control" placeholder="Username..." name="username">
										</div>
										<br>
										<div class="input-group no-border input-lg">
											<div class="input-group-prepend">
												<span class="input-group-text">
													<i class="now-ui-icons text_caps-small"></i>
												</span>
											</div>
											<input type="password" placeholder="Password..." class="form-control" name="password" />
										</div>
									</div>
									<p><b><i>${message}${param.error}</i></b></p>
									<div class="card-footer text-center">
										<button class="btn btn-primary btn-round btn-lg btn-block">Đăng nhập</button>
										<div class="pull-center">
											<h6>
												<a href="#pablo" class="link">Tạo tài khoản</a>
											</h6>
										</div>
										<div class="pull-center">
											<h6>
												<a href="/quenmk" class="link">Quên Mật Khẩu ?</a>
											</h6>
										</div>

								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<footer class="footer">
				<div class="container">
					<nav>
						<ul>
							<li>
								<a href="#">
									Home
								</a>
							</li>
							<li>
								<a href="#">
									About Us
								</a>
							</li>

						</ul>
					</nav>

				</div>
			</footer>
			</div>
			<!--   Core JS Files   -->
			<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>


		</body>

		</html>