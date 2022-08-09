<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="common/header.jspf"%>

<main role="main">

	<div class="container-fluid">
		<div class="container">
			<div class="page-header mt-5">
				<h1>Product Detail</h1>

				<p class="lead">Here is the detail information of the product!</p>
			</div>
			<hr>
			<div class="container" ng-app="cartApp">
				<div class="row">
					<div class="col-md-5">
						<img src="<c:url value="/img/${product.productId}.jpg"/>"
							alt="image" style="width: 100%; height: 300px" />
					</div>

					<div class="col-md-5">
						<h3>${product.productName}</h3>
						<p>${product.productDescription}</p>
						<p>
							<strong>Manufacture</strong>: ${product.productManufacture}
						</p>
						<p>
							<strong>Category</strong>: ${product.productCategory}
						</p>
						<p>
							<strong>Condition</strong>: ${product.productCondition}
						</p>
						<p>
							<strong>Price</strong>: &#8377;${product.productPrice}
						</p>
						<br>
						<c:set var="role" scope="page" value="${param.role}" />
						<c:set var="url" scope="page" value="/product/product-lists" />
						<c:if test="${role='admin'}">
							<c:set var="url" scope="page" value="/admin/product-inventory" />
						</c:if>




						<p ng-controller="cartCtrl">
							<a href="<c:url value="/product/product-lists" />"
								class="btn btn-default">Back</a> <a href="#"
								class="btn btn-warning btn-lg"
								ng-click="addToCart('${product.productId}')"><img
								src="<c:url value="/img/svg/cart4.svg"/>">Order Now</a> <a
								href="<spring:url value="/customer/cart" />" class="btn btn-default"><img
								src="<c:url value="/img/svg/box-arrow-in-up-right.svg"/>">View
								Cart</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>
<script src="<c:url value="${pageContext.request.contextPath}/js/controller.js" /> "></script>
<%@ include file="common/footer.jspf"%>

