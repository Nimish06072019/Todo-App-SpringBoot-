<%@ include file="common/header.jspf"%>
    <!-- Navigation Bar -->
    <%@ include file="common/navigation.jspf"%>

    <!-- Main Content -->
    <div class="container">
      <div class="card shadow">
        <div class="card-header bg-primary text-white">
          <h4 class="mb-0">Enter new Todos</h4>
        </div>

        <div class="card-body">
          <!-- Add Todo Form -->
          <form:form method="post" modelAttribute="todo">
            <div class="mb-3">
              <label for="description" class="form-label">Description</label>
              <form:input type="text" class="form-control" id="description" path="description" required="required" placeholder="Enter todo description"/>
              <form:errors path="description"  cssClass="text-warning"/>
              
               <label for="targetDate" class="form-label">Description</label>
              <form:input type="text" class="form-control" id="targetDate" path="targetDate" required="required" placeholder="Enter your Target Date"/>
              <form:errors path="targetDate"  cssClass="text-warning"/>
              
              <form:input type="hidden" path="id"/>
				<form:input type="hidden" path="done"/>
            </div>
            <button type="submit" class="btn btn-success">Submit</button>
          </form:form>
        </div>
      </div>
    </div>
    <%@ include file="common/footer.jspf"%>
<script type="text/javascript">
	$('#targetDate').datepicker({
	    format: 'yyyy-mm-dd'
	});
</script>
