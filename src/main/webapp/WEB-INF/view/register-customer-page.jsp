<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ include file="common/header.jspf"%>



<main role="main">


	<div class="container mt-5">

		<div class="page-header mt-5">
			<h1 class="text-info">Register Customer</h1>

			<p class="lead text-warning">Please fill in your information
				below</p>
		</div>

		<form:form action="/register" method="post" modelAttribute="customer">

			<h3>Basic Info</h3>

			<div class="form-group">
				<label for="name">Name</label>
				<form:input path="customerName" id="name" class="form-control" />
				<form:errors path="customerName" cssStyle="color:#ff0000" />
			</div>

			<div class="form-group">
				<label for="email">Email</label>
				<form:input path="customerEmail" id="email" class="form-control" />
				<form:errors path="customerEmail" cssStyle="color:#ff0000" />
			</div>

			<div class="form-group">
				<label for="phone">Phone</label>
				<form:input path="customerPhoneNumb" id="phone" class="form-control" />
				<form:errors path="customerPhoneNumb" cssStyle="color:#ff0000" />
			</div>

			<div class="form-group">
				<label for="username">Username</label>
				<form:input path="username" id="username" class="form-control" />
				<form:errors path="username" cssStyle="color:#ff0000" />
			</div>

			<div class="form-group">
				<label for="password">Password</label>
				<form:password path="password" id="password" class="form-control" />
				<form:errors path="password" cssStyle="color:#ff0000" />
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
</main>

<%@ include file="common/footer.jspf"%>