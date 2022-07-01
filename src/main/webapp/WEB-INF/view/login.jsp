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
<title>Login Page</title>
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
						href="<c:url value="/product-lists"/>">Products</a></li>

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

			<div id="login-row"
				class="row justify-content-center align-items-center">
				<div id="login-column" class="col-md-6">
					<div id="login-box" class="col-md-12">
						<c:if test="${not empty msg}">
							<div class="msg alert alert-success">${msg}</div>
						</c:if>
						<form id="login-form" class="form" action="${path}/login"
							method="post">
							<h3 class="text-center text-info">Login</h3>
							<c:if test="${not empty error}">
								<div class="error alert alert-danger" >${error}</div>
							</c:if>
							<div class="form-group">
								<label for="username" class="text-info">Username:</label><br>
								<input type="text"  name="username"
									id="username" class="form-control" />

							</div>
							<div class="form-group">
								<label for="password" class="text-info">Password:</label><br>
								<input type="password"  name="password"
									id="password" class="form-control" />
							</div>
							<!-- Very Important Input -->
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
							<div class="form-group">
								<input type="submit" name="submit" class="btn btn-info btn-md"
									value="submit" />
							</div>

						</form>
					</div>
				</div>
			</div>


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
