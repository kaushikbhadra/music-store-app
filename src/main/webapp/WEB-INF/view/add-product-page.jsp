<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="common/header.jspf"%>
<main role="main">

	<div class="container-fluid">
		<div class="container">
			<div class="page-header mt-5">
				<h1>Add Product</h1>

				<p class="lead">Here, add your detail information of the
					product!</p>
			</div>
		</div>
		<hr>
		<div class="container ">
			<form:form action="/admin/product-inventory/add-product"
				method="post" modelAttribute="product" enctype="multipart/form-data">
				<div class="form-group">
					<label for="name"> <strong>Name</strong></label>
					<form:input type="text" class="form-control" id="name"
						path="productName" />
					<form:errors path="productName" cssStyle="color:#ff0000" />
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
						class="form-control" />
				</div>

				<div class="form-group">
					<label for="price"><strong>Price</strong></label>
					<form:input path="productPrice" id="price" class="form-control" />
					<form:errors path="productPrice" cssStyle="color:#ff0000" />
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
						class="form-control" />
					<form:errors path="unitInStock" cssStyle="color:#ff0000" />
				</div>

				<div class="form-group">
					<label for="manufacturer"><strong>Manufacturer</strong></label>
					<form:input path="productManufacture" id="manufacturer"
						class="form-control" />
				</div>

				<div class="form-group">
					<label for="productImage"><strong>Upload Picture</strong></label>
					<form:input id="productImage" path="productImage" type="file"
						class="form-control-file" accept="image/png, image/jpeg" />
				</div>


				<br>
				<br>
				<input type="submit" value="submit" class="btn btn-outline-success">
				<a href="<c:url value="/admin/product-inventory" />"
					class="btn btn-outline-danger">Cancel</a>
			</form:form>
		</div>

	</div>
</main>




<%@ include file="common/footer.jspf"%>