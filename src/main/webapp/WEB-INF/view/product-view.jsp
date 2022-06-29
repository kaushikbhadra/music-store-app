<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description"
	content="Best Stores for Buying music MP3, Instrument and Accessories" />
<meta name="author"
	content="Kaushik Bhadra, Mark Otto, Jacob Thornton, and Bootstrap contributors" />
<meta name="generator" content="Hugo 0.88.1" />
<title>Product-Details</title>
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>" />

<!-- Custom styles for this template -->

<link rel="stylesheet" href="<c:url value="/css/style.css"/>" />
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
			<a class="navbar-brand" href="<c:url value="/store/musicstore"/>">MusicStore</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarCollapse" aria-controls="navbarCollapse"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/store/musicstore"/>">Home <span
							class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item active"><a class="nav-link"
						href="<c:url value="/store/product-lists"/>">Products</a></li>
					
				</ul>
				<ul class="navbar-nav mr-sm-2">
					<li class="nav-item mt-md-0"><a class="nav-link" href="<c:url value="/store/admin"/>">Admin</a></li>
				</ul>
			</div>
		</nav>
	</header>

<main role="main">

	<div class="container-fluid">
		<div class="container">
			<div class="page-header mt-5">
				<h1>Product Detail</h1>

				<p class="lead">Here is the detail information of the product!</p>
			</div>
			<hr>
			<div class="container">
				<div class="row">
					<div class="col-md-5">
						<img src="<c:url value="/img/${product.productId}.jpg"/>" alt="image" style="width: 100%; height: 300px" />
					</div>

					<div class="col-md-5">
						<h3>${product.productName}</h3>
						<p>${product.productDescription}</p>
						<p><strong>Manufacture</strong>: ${product.productManufacture}</p>
						<p><strong>Category</strong>: ${product.productCategory}</p>
						<p><strong>Condition</strong>: ${product.productCondition}</p>
						<p><strong>Price</strong>: &#8377;${product.productPrice}</p>
					</div>
				</div>
			</div>
		</div>
	</div>




	
<!-- FOOTER -->
<footer class="container mt-5">
	<div class="row">
		<div class="col-md-8">
			<p>&copy;2022 Created by Kaushik Bhadra and design by bootstrap.</p>
		</div>
		<div class="col-md-4">
			<p class="float-right">
				<a href="#">Back to top</a>
			</p>
		</div>
	</div>


</footer>
</main>

<script src="<c:url value="/js/jquery.slim.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
</body>
</html>
