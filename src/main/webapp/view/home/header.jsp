<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<header>
			<nav class="navbar navbar-expand-lg navbar-dark navbar-light"
					style="background-color:  rgb(255, 128, 192);">
					<div class="container-fluid">
						<a class="navbar-brand " href="/home/index">CHƯƠNG TRÌNH QUYÊN GÓP TỪ THIỆN</a>
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse" data-bs-target="#navbarScroll"
							aria-controls="navbarScroll" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarScroll">
							<ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
								style="-bs-scroll-height: 100px;">	
							</ul>
							<form class="d-flex">
								<form action="/home/index">
									<input class="form-control me-2" type="search"
										placeholder="Bạn tìm gì..." aria-label="Search"
										name="keywords"> 
										<button type="submit" style="width: 150px;" class="form-control"> <i class="fa fa-search" aria-hidden="true"></i> </button>
								</form>
							</form>
							<form >
							<h5 class="nav-link" style="color: red;">
								<a href="/logout/${username}">${username}</a>
							</h5></form>
							<form class="d-flex">
								<a href="/accountuser/${username}"><img
									src="https://img.icons8.com/bubbles/2x/user.png" alt=""
									style="width: 70px; height: 70px; margin-top: 30px;"> </a>
							</form>
							<form class="d-flex">
								<a href="/account/login"><img
									src="https://laodongnhatban.com.vn/images/2017/09/01/2-serv.png" alt=""
									style="width: 56px; height: 56px; margin-top: 30px;"> </a>
							</form>
						</div>
					</div>
			</nav>
		</header>