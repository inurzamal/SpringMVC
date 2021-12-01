<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
</head>
<body>
	<div class="container mt-3">

        <div class="row">
            <div class="col-md-6 offset-md-3">
                <h3 class="text-center mb-3"> Change Product Details </h3>
                
                    <form action="${pageContext.request.contextPath}/handle-product" method="post">
                    
                    	<div class="form-group mb-3">
                    		<label for="id" class="form-label">Product ID</label>
                    		<input type="text" name="id" value="${product.id}">
                    	</div>
                    	
                        <div class="form-group mb-3">
                            <label for="name" class="form-label">Product Name</label>
                            <input type="text" class="form-control" name="name" value="${product.name }">
                        </div>

                        <div class="form-group mb-2">
                            <label for="description" class="form-label">Product Description</label>
                            <textarea class="form-control" name="description" rows="5"> ${product.description }</textarea>
                        </div>

                        <div class="form-group mb-3">
                            <label for="price" class="form-label">Price</label>
                            <input type="text" class="form-control" name="price" value="${product.price }">
                        </div>

                        <div class="container text-center mb-3">
                            <a href="${pageContext.request.contextPath}/" class="btn btn-outline-secondary">Back</a>
                            <button type="submit" class="btn btn-warning">Update</button>
                        </div>
                    </form>

            </div>
        </div>

    </div>
</body>
</html>