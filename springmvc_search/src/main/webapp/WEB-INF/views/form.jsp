<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">

    <title>register</title>
  </head>
  <body style="background:#e2e2e2">


	<div class="container mt-4">
	
	<div class="row">
	
		<div class="col-md-6 offset-md-3">

				<div class="card p-4">

					<div class="card-body">

						<h3 class="text-center">Registration Form</h3>


						<form action="processform" method= "post">

							<div class="form-group">
								<label for="name">Name</label> 
								<input type="text" class="form-control" placeholder="your name" name="name">
							</div>
							
							<div class="form-group">
								<label for="email" class="mt-2">Email</label> 
								<input type="email" class="form-control" placeholder="your email id" name="email">
							</div>
							
							<div class="form-group">
								<label for="dob" class="mt-2">DOB</label> 
								<input type="text" class="form-control" placeholder="dd/mm/yyyy" name="dob">
							</div><br>
														
							
							<div class="form-group">
								<label for="courses">Select Course</label> <br>
									<div class="form-check"><input class="form-check-input" type="checkbox" value="python" name="courses"> Python</div>
									<div class="form-check"><input class="form-check-input" type="checkbox" value="java" name="courses">Java </div>
									<div class="form-check"><input class="form-check-input" type="checkbox" value="android" name="courses">Android </div>
							</div><br>
							

							
							<div class="form-group">
								<label for="gender">Gender</label><br>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="gender" value="Male">
									<label class="form-check-label" for="gender">Male</label>
								</div>

								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="gender" value="Female">
									<label class="form-check-label" for="gender">Female</label>
								</div>
								
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="gender" value="Other">
									<label class="form-check-label" for="gender">Others</label>
								</div>
							</div><br>
							
							<div>
							
								<label>Select Type</label>
								<select class="form-select" name="stype">

									<option selected value="new student">New Student</option>
									<option value="old student">Old Student</option>
								</select>
							
							</div> <br>
							
							<div class="text-center">
								<input type="submit" value="SUBMIT" class="btn btn-primary">
							
							</div>

						</form>

					</div>


				</div>

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