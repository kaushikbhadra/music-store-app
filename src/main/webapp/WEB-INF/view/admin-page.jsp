<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="common/header.jspf"%>
<!-- Main Block -->
<main role="main">

	<div class="container-fluid">
		<div class="container">
			<div class="page-header mt-5">
				<h1>Administrator</h1>

				<p class="lead">For Administrator purpose</p>

			</div>

			<hr>
			<h3>
				<a href="<c:url value="/admin/product-inventory"/>">Product
					Inventory</a>

			</h3>
			<p>Here, You can view or modify and add product in inventory.</p>

		</div>
	</div>
	<!-- /.container-fluid -->
</main>

<%@ include file="common/footer.jspf"%>