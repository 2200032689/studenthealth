<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Solution</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h3 class="text-center mb-4">Add Solution</h3>
        <form method="post" action="insertsolution"  class="shadow p-4 rounded bg-light">
            <div class="mb-3">
                <label for="sname" class="form-label">Student Name</label>
                <input type="text" class="form-control" id="sname" name="sname" required>
            </div>
            <div class="mb-3">
                <label for="sproblem" class="form-label">Problem</label>
                <input type="text" class="form-control" id="sproblem" name="sproblem" required>
            </div>
            <div class="mb-3">
                <label for="scure" class="form-label">Cure</label>
                <textarea class="form-control" id="scure" name="scure" rows="4" required></textarea>
            </div>
            <div class="mb-3">
                <label for="sreferenceLink" class="form-label">Additional Reference</label>
                <input type="url" class="form-control" id="sreferenceLink" name="sreferenceLink" placeholder="Enter a valid URL" required>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-success me-2">Add</button>
                <button type="reset" class="btn btn-secondary">Clear</button>
            </div>
        </form>
    </div>

    <!-- Bootstrap JS (optional, for interactive components) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
