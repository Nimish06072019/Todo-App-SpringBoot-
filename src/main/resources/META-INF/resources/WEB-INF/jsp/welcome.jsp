<%@ include file="common/header.jspf"%>
<!-- Navigation Bar -->
<%@ include file="common/navigation.jspf"%>

    <div class="container">
      <div class="row justify-content-center align-items-center" style="height: 100vh;">
        <div class="col-md-6">
          <div class="glass-card shadow p-0 text-center">
            <div class="card-body">
              <!-- Welcome Message -->
              <h1 class="mb-4 cyber-glow">Welcome ${name}</h1>
              <!-- Manage Link -->
              <p>
                <a href="list-todos" class="btn btn-success">Manage</a> your todos
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
<%@ include file="common/footer.jspf"%>