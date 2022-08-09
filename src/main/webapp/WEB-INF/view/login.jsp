<%@ include file="common/header.jspf"%>

<main role="main">
	<div class="container mt-5">
		<div id="login-row"
			class="row justify-content-center align-items-center">
			<div id="login-column" class="col-md-6">
				<div id="login-box" class="col-md-12">
					<c:if test="${not empty msg}">
						<div class="msg alert alert-success">${msg}</div>
					</c:if>
					<form id="login-form" class="form" action="/login"
						method="post">
						<h3 class="text-center text-info">Login</h3>
						<c:if test="${not empty error}">
							<div class="error alert alert-danger">${error}</div>
						</c:if>
						<div class="form-group">
							<label for="username" class="text-info">Username:</label><br>
							<input type="text" name="username" id="username"
								class="form-control" />

						</div>
						<div class="form-group">
							<label for="password" class="text-info">Password:</label><br>
							<input type="password" name="password" id="password"
								class="form-control" />
						</div>
						<!-- Very Important Input -->
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}">
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
</main>

<%@ include file="common/footer.jspf" %>