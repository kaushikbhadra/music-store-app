<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="common/header.jspf"%>
<div class="container-fluid">
	<div class="container">
		<section>
			<div class="jumbotron">
				<div class="container">
					<h1>Cart</h1>
					<p class="lead">All the selected products in your shopping
						cart.</p>
				</div>
			</div>
		</section>
		<section class="container" ng-app="cartApp">
		<div ng-controller = "cartCtrl" ng-init="initCartId('${cartId}')">
			<div>
				<a class="btn btn-danger pull-left">Clear Cart</a>
			</div>
			 <table class="table table-hover">
			 	<tr>
                    <th>Product</th>
                    <th>Unit Price</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Action</th>
                </tr>
                <tr ng-repeat = "item in cart.cartItems">
                    <td>{{item.product.productName}}</td>
                    <td>{{item.product.productPrice}}</td>
                    <td>{{item.quantity}}</td>
                    <td>{{item.totalPrice}}</td>
                    <td><a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productId)">
                        <span class="glyphicon glyphicon-remove"></span>remove</a></td>
                </tr>
			 	<tr>
                    <th></th>
                    <th></th>
                    <th>Grand Total</th>
                    <th>{{calGrandTotal()}}</th>
                    <th></th>
                </tr> 
			 </table>
			  <a href="<spring:url value="/product/product-lists/all" />" class="btn btn-default">Continue Shopping</a>
			 </div>
		</section>
	</div>
</div>

<%@ include file="common/footer.jspf"%>