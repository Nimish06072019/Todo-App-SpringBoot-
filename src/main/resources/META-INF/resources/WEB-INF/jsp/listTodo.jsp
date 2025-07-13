<%@ include file="common/header.jspf"%>
	<!-- Navigation Bar -->
	<%@ include file="common/navigation.jspf"%>
	
	<!-- Main Content -->
	<div class="container">
		<div class="card shadow">
			<div class="card-header bg-primary text-white">
				<h4 class="mb-4">Your Todos</h4>
			</div>

			<div class="card-body">
				<table class="table table-striped table-hover align-middle">
					<thead class="table-dark">
						<tr>
							<th>Description</th>
							<th>Target Date</th>
							<th>Is Done?</th>
							<th></th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${todos}" var="todo">
							<tr>
								<!-- Unchanged Section -->
								<td>${todo.description}</td>
								<td>${todo.targetDate}</td>
								<td>${todo.done}</td>
								<td><a href="delete-todo?id=${todo.id}"
									class="btn btn-warning">Delete</a></td>
								<td><a href="update-todo?id=${todo.id}"
									class="btn btn-success">Update</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<a href="add-todo" class="btn btn-success">Add new todo</a>
			</div>
		</div>
	</div>
	<!-- Scripts -->
	<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>
