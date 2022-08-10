<%@ include file="common/header.jspf"%>
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
						<p>Best Stores for Buying music MP3, Instrument and
							Accessories</p>

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
						<p>Through ups and downs, Somehow I manage to survive in life.</p>

					</div>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-target="#myCarousel" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-target="#myCarousel" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
		</button>
	</div>

	<!-- Marketing messaging and featurettes -->
  
	<div class="container marketing">
		<!-- Three columns of text below the carousel -->
		<div class="row">
	
			<div class="col-lg-4">
				<a class="btn btn-default"
					href="<c:url value="/product/product-lists?searchCondition=Instrument" />"
					role="button"> <img class="img-circle"
					src="<c:url value="/img/instrument.jpg" />"
					alt="Instrument
                Image" width="140" height="140"></a>

				<h2>Instrument</h2>
				<p>Well crafted and delicate instruments.</p>

			</div>
			<div class="col-lg-4">
				<a class="btn btn-default"
					href="<c:url value="/product/product-lists?searchCondition=Music" />"
					role="button"> <img class="img-circle"
					src="<c:url value="/img/record.jpg" />"
					alt="Music record
                Image" width="140" height="140"></a>

				<h2>Discography</h2>
				<p>An exceptional collections of music records.</p>

			</div>
			<div class="col-lg-4">
				<a class="btn btn-default"
					href="<c:url value="/product/product-lists?searchCondition=Accessory" />"
					role="button"> <img class="img-circle"
					src="<c:url value="/img/accessory.jpg" />"
					alt="Accessory
                Image" width="140" height="140"></a>

				<h2>Accessories</h2>
				<p>All musical and related geeky goods.</p>

			</div>
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
</main>
<%@ include file="common/footer.jspf"%>
