<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>

</head>
<body>
<h3 align="center">Add Product</h3>
	
<form method = "post" action="insertproduct" enctype="multipart/form-data">
	<label>Product Name</label>
	<input type="text" class = "form-control" name="pname" required/>
	<br/>
	<label>Product Cost</label>
	<input type="number" class = "form-control" name="pcost" step="0.01" required/>
	<br/>
	<label>Product Description</label>
	<textarea name="pdescription" class = "form-control" required></textarea>
	<br/>
	<label>Product Image</label>
	<input type="file" class = "form-control" name="pimage" required/>
	<br/>
	<input type="submit" value="Add" class="btn btn-success"/>
	<input type="reset" value="Clear" class="btn btn-success"/>
	</form>
	
	
</body>
</html>