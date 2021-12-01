<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

    <title>search</title>
    <link rel = "stylesheet" href="<c:url value="/resources/css/style.css" /> ">
    <script src="<c:url value="/resources/js/script.js" />" > </script>
  </head>
  <body>
    
  <img class = "banner" alt="This is supposed to be an image" src="<c:url value="/resources/images/car.jpg" />">
  
  <div class="container mt-3"> <a href="/springmvc_search/register">Registration Form</a> </div>
  
 

	<div class="container">

		<div class="card mx-auto my-0 bg-info col-md-6">

			<div class="card-body text-center">

				<h4 class="text-white text-uppercase"> My Search</h4>
				
				<form  action="search" class="mt-5">
					<div class="mb-3">
							<input type="text" class="form-control" name="querybox" placeholder="you can search here..">
					</div>
					<button type="submit" class="btn btn-outline-light">Submit</button>
				</form>


			</div>


		</div>


	</div>







	<!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
    -->
  </body>
</html>