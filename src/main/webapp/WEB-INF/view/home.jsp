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
<title>Music Store - best stores for buying music product</title>
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
					<li class="nav-item active"><a class="nav-link"
						href="<c:url value="/"/>">Home <span
							class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/product/product-lists"/>">Products</a></li>

				</ul>
				<ul class="navbar-nav mr-sm-2">
					<li class="nav-item mt-md-0"><a class="nav-link"
						href="<c:url value="/admin"/>">Admin</a></li>
					<li class="nav-item mt-md-0"><a class="nav-link"
						href="<c:url value="/register"/>">Register</a></li>
				</ul>

			</div>
		</nav>
	</header>

	<main role="main">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">

					<img alt="hero-1.jpg" src="<c:url value="/img/hero-1.jpg"/>">

					<div class="container">
						<div class="carousel-caption text-left">
							<h1>Welcome to Music Store</h1>
							<p>Best Stores for Buying music MP3, Instrument and Accessories</p>

						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img alt="hero-2.jpg" src="<c:url value="/img/hero-2.jpg"/>">

					<div class="container">
						<div class="carousel-caption">
							<h1>Facts You Should Know About Music</h1>
							<p>Music brings joy, to all of our hearts, It's one of those,
								emotional arts.</p>


						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img alt="hero-3.jpg" src="<c:url value="/img/hero-3.jpg"/>">

					<div class="container">
						<div class="carousel-caption text-right">
							<h1>It's A Jazz Affair</h1>
							<p>Through ups and downs, Somehow I manage to survive in
								life.</p>

						</div>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-target="#myCarousel" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-target="#myCarousel" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</button>
		</div>

		<!-- Marketing messaging and featurettes
  ================================================== -->
		<!-- Wrap the rest of the page in another container to center all the content. -->

		<div class="container marketing">
			<!-- Three columns of text below the carousel -->
			<div class="row">
				<div class="col-lg-4">
					<svg class="bd-placeholder-img rounded-circle" width="140"
						height="140" xmlns="http://www.w3.org/2000/svg" role="img"
						aria-label="Placeholder: 140x140"
						preserveAspectRatio="xMidYMid slice" focusable="false">
              <title>Placeholder</title>
              <rect width="100%" height="100%" fill="#777" />
              <text x="50%" y="50%" fill="#777" dy=".3em">140x140</text>
            </svg>

					<h2>Heading</h2>
					<p>Some representative placeholder content for the three
						columns of text below the carousel. This is the first column.</p>
					<p>
						<a class="btn btn-secondary" href="#">View details &raquo;</a>
					</p>
				</div>
				<!-- /.col-lg-4 -->
				<div class="col-lg-4">
					<svg class="bd-placeholder-img rounded-circle" width="140"
						height="140" xmlns="http://www.w3.org/2000/svg" role="img"
						aria-label="Placeholder: 140x140"
						preserveAspectRatio="xMidYMid slice" focusable="false">
              <title>Placeholder</title>
              <rect width="100%" height="100%" fill="#777" />
              <text x="50%" y="50%" fill="#777" dy=".3em">140x140</text>
            </svg>

					<h2>Heading</h2>
					<p>Another exciting bit of representative placeholder content.
						This time, we've moved on to the second column.</p>
					<p>
						<a class="btn btn-secondary" href="#">View details &raquo;</a>
					</p>
				</div>
				<!-- /.col-lg-4 -->
				<div class="col-lg-4">
					<svg class="bd-placeholder-img rounded-circle" width="140"
						height="140" xmlns="http://www.w3.org/2000/svg" role="img"
						aria-label="Placeholder: 140x140"
						preserveAspectRatio="xMidYMid slice" focusable="false">
              <title>Placeholder</title>
              <rect width="100%" height="100%" fill="#777" />
              <text x="50%" y="50%" fill="#777" dy=".3em">140x140</text>
            </svg>

					<h2>Heading</h2>
					<p>And lastly this, the third column of representative
						placeholder content.</p>
					<p>
						<a class="btn btn-secondary" href="#">View details &raquo;</a>
					</p>
				</div>
				<!-- /.col-lg-4 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->

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
