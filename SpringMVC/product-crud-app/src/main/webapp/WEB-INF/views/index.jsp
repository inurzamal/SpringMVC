<html>
<head>
<%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
	<div class="container mt-3">
	
		<div class="row">
		
			<div class="col-md-12">
			
				<h3 class="text-center mb-3"> Welcome to Product App </h3>

				<table class="table">
					<thead class="table-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Product Name</th>
							<th scope="col">Product Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${product }" var="p">
							<tr>
						      <th scope="row">${p.id }</th>
						      <td>${p.name }</td>
						      <td>${p.description }</td>
						      <td> &#8377; ${p.price} </td>
						      <td class=""> 
						      	<a href="delete/${p.id}"><i class="far fa-trash-alt text-danger"></i></a>
								<a href="update/${p.id}"><i class="far fa-edit text-primary"></i></a> 
							  </td>
						    </tr>
						</c:forEach>
					</tbody>
				</table>
				
				<div class="container text-center">
					<a href="addproduct" class="btn btn-outline-success">Add Products</a>
				</div>
	

			</div>
		
		
		</div>
	
	
	</div>
</body>
</html>
