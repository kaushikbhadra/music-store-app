<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
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
<title>Register Customer Page</title>
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
						href="<c:url value="/"/>">Home <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item active"><a class="nav-link"
						href="<c:url value="/product/product-lists"/>">Products</a></li>

				</ul>
				<ul class="navbar-nav mr-sm-2">
					<li class="nav-item mt-md-0"><a class="nav-link"
						href="<c:url value="/admin"/>">Admin</a></li>
				</ul>
			</div>
		</nav>
	</header>

	<main role="main">


		<div class="container mt-5">

			<div class="page-header mt-5">
				<h1 class="text-info">Register Customer</h1>

				<p class="lead text-warning">Please fill in your information
					below</p>
			</div>

			<form:form action="${pageContext.request.contextPath}/register"
				method="post"   modelAttribute="customer">

				<h3>Basic Info</h3>

				<div class="form-group">
					<label for="name">Name</label>
					<form:input path="customerName" id="name" class="form-control" />

				</div>

				<div class="form-group">
					<label for="email">Email</label>
					<form:input path="customerEmail" id="email" class="form-control" />

				</div>

				<div class="form-group">
					<label for="phone">Phone</label>
					<form:input path="customerPhoneNumb" id="phone"
						class="form-control" />
				</div>

				<div class="form-group">
					<label for="username">Username</label>
					<form:input path="username" id="username" class="form-control" />

				</div>

				<div class="form-group">
					<label for="password">Password</label>
					<form:password path="password" id="password" class="form-control" />

				</div>


				<h3>Billing Address</h3>

				<div class="form-group">
					<label for="billingStreet">Street Name</label>
					<form:input path="billingAddress.streetName" id="billingStreet"
						class="form-control" />
				</div>

				<div class="form-group">
					<label for="billingApartmentNumber">Apartment Number</label>
					<form:input path="billingAddress.apartmentNumber"
						id="billingApartmentNumber" class="form-control" />
				</div>

				<div class="form-group">
					<label for="billingCity">City</label>
					<form:input path="billingAddress.city" id="billingCity"
						class="form-control" />
				</div>

				<div class="form-group">
					<label for="billingState">State</label>
					<form:input path="billingAddress.state" id="billingState"
						class="form-control" />
				</div>

				<div class="form-group">
					<label for="billingCountry">Country</label>
					<form:input path="billingAddress.country" id="billingCountry"
						class="form-control" />
				</div>

				<div class="form-group">
					<label for="billingZip">Zipcode</label>
					<form:input path="billingAddress.zipCode" id="billingZip"
						class="form-control" />
				</div>


				<h3>Shipping Address</h3>

				<div class="form-group">
					<label for="shippingStreet">Street Name</label>
					<form:input path="shippingAddress.streetName" id="shippingStreet"
						class="form-control" />
				</div>

				<div class="form-group">
					<label for="shippingApartmentNumber">Apartment Number</label>
					<form:input path="shippingAddress.apartmentNumber"
						id="shippingApartmentNumber" class="form-control" />
				</div>

				<div class="form-group">
					<label for="shippingCity">City</label>
					<form:input path="shippingAddress.city" id="shippingCity"
						class="form-control" />
				</div>

				<div class="form-group">
					<label for="shippingState">State</label>
					<form:input path="shippingAddress.state" id="shippingState"
						class="form-control" />
				</div>

				<div class="form-group">
					<label for="shippingCountry">Country</label>
					<form:input path="shippingAddress.country" id="shippingCountry"
						class="form-control" />
				</div>

				<div class="form-group">
					<label for="shippingZip">Zipcode</label>
					<form:input path="shippingAddress.zipCode" id="shippingZip"
						class="form-control" />
				</div>

				<br>
				<br>
				<input type="submit" value="submit" class="btn btn-outline-success">
				<a href="<c:url value="/" />" class="btn btn-outline-danger">Cancel</a>
			</form:form>

		</div>
		<!-- Container End -->


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
