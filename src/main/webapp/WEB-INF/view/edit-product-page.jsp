<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<title>Edit-Product</title>
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
					<li class="nav-item active"><a class="nav-link"
						href="<c:url value="/product-lists"/>">Products</a></li>
					
				</ul>
				<ul class="navbar-nav mr-sm-2">
					<li class="nav-item mt-md-0 active"><a class="nav-link" href="<c:url value="/admin"/>">Admin</a></li>
				</ul>
			</div>
		</nav>
	</header>

	<main role="main">

		<div class="container-fluid">
			<div class="container">
				<div class="page-header mt-5">
					<h1>Edit Product</h1>

					<p class="lead">Here, edit your detail information of the
						product!</p>
				</div>
			</div>
			<hr>
			<div class="container ">
				<form:form action="/admin/product-inventory/edit-product"
					method="post" modelAttribute="product"
					enctype="multipart/form-data">
					<form:hidden path="productId" value="${product.productId}"/>
					<div class="form-group">
						<label for="name"> <strong>Name</strong></label>
						<form:input type="text" class="form-control" id="name"
							path="productName" value="${product.productName}" />
						<form:errors path="productName" cssStyle="color:#ff0000"/>
					</div>
					<div class="form-group">
						<label for="category"><strong>Category</strong></label> <label
							class="checkbox-inline"> <form:radiobutton
								path="productCategory" id="category" value="instrument" />Instrument
						</label> <label class="checkbox-inline"><form:radiobutton
								path="productCategory" id="category" value="music" />Music</label> <label
							class="checkbox-inline"><form:radiobutton
								path="productCategory" id="category" value="accessory" />Accessorie</label>
					</div>

					<div class="form-group">
						<label for="description"><strong>Description</strong></label>
						<form:textarea path="productDescription" id="description"
							class="form-control" value="${product.productDescription}"/>
					</div>

					<div class="form-group">
						<label for="price"><strong>Price</strong></label>
						<form:input path="productPrice" id="price" class="form-control" value="${product.productPrice}" />
						<form:errors path="productPrice" cssStyle="color:#ff0000"/>
					</div>

					<div class="form-group">
						<label for="condition"><strong>Condition</strong></label> <label
							class="checkbox-inline"> <form:radiobutton
								path="productCondition" id="condition" value="new" />New
						</label> <label class="checkbox-inline"><form:radiobutton
								path="productCondition" id="condition" value="used" />Used</label>
					</div>

					<div class="form-group">
						<label for="status"><strong>Status</strong></label> <label
							class="checkbox-inline"><form:radiobutton
								path="productStatus" id="status" value="active" />Active</label> <label
							class="checkbox-inline"> <form:radiobutton
								path="productStatus" id="status" value="inactive" />Inactive
						</label>
					</div>

					<div class="form-group">
						<label for="unitInStock"><strong>Unit In Stock</strong></label>
						<form:input path="unitInStock" id="unitInStock"
							class="form-control" value="${product.unitInStock}" />
						<form:errors path="unitInStock" cssStyle="color:#ff0000"/>
					</div>

					<div class="form-group">
						<label for="manufacturer"><strong>Manufacturer</strong></label>
						<form:input path="productManufacture" id="manufacturer"
							class="form-control" value="${product.productManufacture}"/>
					</div>

					<div class="form-group">
						<label for="productImage"><strong>Upload Picture</strong></label>
						<form:input id="productImage" path="productImage" type="file"
							class="form-control-file" accept="image/png, image/jpeg"/>
					</div>


					<br>
					<br>
					<input type="submit" value="submit" class="btn btn-outline-success">
					<a href="<c:url value="/admin/product-inventory" />"
						class="btn btn-outline-danger">Cancel</a>
				</form:form>
			</div>

		</div>






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
