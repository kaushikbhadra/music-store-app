<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
<title>Product-Inventory</title>
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>" />

<!-- Custom styles for this template -->

<link rel="stylesheet" href="<c:url value="/css/style.css"/>" />
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
			<a class="navbar-brand" href="<c:url value="/"/>">MusicStore</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarCollapse" aria-controls="navbarCollapse"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/"/>">Home <span
							class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item active"><a class="nav-link "
						href="<c:url value="/product-lists"/>">Products</a></li>
				</ul>
				<ul class="navbar-nav mr-sm-2">
					<li class="nav-item mt-md-0 active"><a class="nav-link" href="<c:url value="/admin"/>">Admin</a></li>
				</ul>
			</div>
		</nav>
	</header>
	<!-- Main Block -->
	<main role="main">

		<div class="container-fluid">
			<div class="container">
				<div class="page-header mt-5">
					<h1>Product Inventory</h1>

					<p class="lead">This is product inventory area</p>
				</div>

				<table class="table table-striped table-hover table-responsive">
					<thead>
						<tr class="table-success">
							<th>#</th>
							<th>Photo Thumb</th>
							<th>Product Name</th>
							<th>Category</th>
							<th>Condition</th>
							<th>Price</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
					<% int i = 1; %>
						<c:forEach items="${products}" var="product">
							<tr>
								<td><%= i %> <% i++; %></td>
								<td><img src="<c:url value="/img/${product.productId}.jpg"/>" alt="image.jpg" class="p-img"></td>
								<td>${product.productName}</td>
								<td>${product.productCategory}</td>
								<td>${product.productCondition}</td>
								<td>&#8377;${product.productPrice}</td>
								<td><a
									href="<spring:url value="/product-lists/product-show/${product.productId}"/>"><img
										src="<c:url value="/img/svg/info-circle-fill.svg"/>"></a>
									<a
									href="<spring:url value="/admin/product-inventory/delete-product/${product.productId}"/>"><img
										src="<c:url value="/img/svg/x-circle-fill.svg"/>"></a>
									<a
									href="<spring:url value="/admin/product-inventory/edit-product/${product.productId}"/>"><img
										src="<c:url value="/img/svg/pen-fill.svg"/>"></a>
								</td>
							</tr>
						</c:forEach>
					</tbody>

				</table>
				<a href="<spring:url value="/admin/product-inventory/add-product"/>"  class="btn btn-outline-success ">Add Product</a>
				
			</div>
		</div>
		<!-- /.container-fluid -->


		<!-- FOOTER -->
		<footer class="container mt-5">
			<div class="row">
				<div class="col-md-8">
					<p>&copy;2022 Created by Kaushik Bhadra and design by
						bootstrap.</p>
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
