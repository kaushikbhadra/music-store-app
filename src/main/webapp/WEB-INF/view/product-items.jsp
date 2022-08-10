<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="common/header.jspf"%>

<script>
$(document).ready( function () {
	var searchCondition = '${searchCondition}';

    $('.table').DataTable({
        "lengthMenu": [[1,2,3,5,10,-1], [1,2,3,5,10, "All"]],
        "oSearch": {"sSearch": searchCondition}
    });
    
} );

</script>

<!-- Main Block -->
<main role="main">

  
	<div class="container-fluid">
		<div class="container">
			<div class="page-header mt-5">
				<h1>All Products</h1>

				<p class="lead">Checkout all the awesome products available now!</p>
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
					<%
					int i = 1;
					%>
					<c:forEach items="${products}" var="product">
						<tr>
							<td><%=i%> <%i++;%></td>
							<td><img
								src="<c:url value="/img/${product.productId}.jpg"/>"
								alt="image.jpg" class="p-img"></td>
							<td>${product.productName}</td>
							<td>${product.productCategory}</td>
							<td>${product.productCondition}</td>
							<td>&#8377;${product.productPrice}</td>
							<td><a
								href="<spring:url value="/product/product-lists/product-show/${product.productId}"/>"><img
									src="<c:url value="/img/svg/info-circle-fill.svg"/>"></a></td>
						</tr>
					</c:forEach>
				</tbody>

			</table>
		</div>
	</div>
	<!-- /.container-fluid -->
</main>

<%@ include file="common/footer.jspf"%>