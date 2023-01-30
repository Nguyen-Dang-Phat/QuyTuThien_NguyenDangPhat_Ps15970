<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang chủ</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
	integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
	crossorigin="anonymous"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" type="text/css" href="/css/time.css">
<script>
	var dropdownElementList = [].slice.call(document
			.querySelectorAll('.dropdown-toggle'))
	var dropdownList = dropdownElementList.map(function(dropdownToggleEl) {
		return new bootstrap.Dropdown(dropdownToggleEl)
	})
</script>


</head>

<body>
	<div class="container">
		<jsp:include page="header.jsp"/>
		<main>
			<!--Hình header-->
			<img src="/home/1.jpg" alt="" style="margin-top: 90px;"><br>&ensp;
			<!--end header-->

			<!--Sản phẩm-->
				
				<div class="row">
					<c:forEach var="item" items="${page.content}">
						<div class="col-md-3 col-sm-6" style="margin-top: 30px;">
							<div class="product-grid6">
								<div class="product-image6">
									<a href="/cart/chitiet/${item.id}"> <img class="pic-1"
										src="../images/${item.image}">
									</a>
								</div>
								<div class="product-content">
									<h3 class="title">${item.name}</h3>
									<div class="price">${item.price} VND</div>
								</div>
								<ul class="social">
									<button class="btn btn-primary" type="submit"><a href="/cart/chitiet/${item.id}" data-tip=""><i
											class="fa fa-heart"></i>Quyên góp</a></button>
								</ul>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<!-- End Sản phẩm-->
		</main>
		<jsp:include page="footer.jsp"/>
	</div>
</body>
<script>
	var dropdownElementList = [].slice.call(document
			.querySelectorAll('.dropdown-toggle'))
	var dropdownList = dropdownElementList.map(function(dropdownToggleEl) {
		return new bootstrap.Dropdown(dropdownToggleEl)
	})
</script>


</html>