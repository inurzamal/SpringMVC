<%@ taglib prefix="form1" uri="http://www.springframework.org/tags/form" %>

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
	
		<div class="col-md-8 mx-auto mb-3">

				<div class="card p-4">

					<div class="card-body">

						<h3 class="text-center">Registration Form</h3>
						
						<div style="color:red; font-size:small;">							
							<form1:errors path="student.*" />							
						</div>


						<form action="processform" method= "post">

							<div class="form-group mb-3">
								<label for="name" class="form-label">Name</label> 
								<input type="text" class="form-control" placeholder="your name" name="name" required>
							</div>
							
							<div class="row mb-4">
							
								<div class="col-md-6">
								
									<div class="form-group">
										<label for="email" class="form-label">Email</label> 
										<input type="email" class="form-control" placeholder="your email id" name="email">
									</div>
								
								</div>
								
								<div class="col-md-6">					
									
									<div class="form-group">
										<label for="dob" class="form-label">DOB</label> 
										<input type="text" class="form-control" placeholder="dd/mm/yyyy" name="dob">
									</div>
								
								</div>
							
							</div>


							<div class="card mb-3">							
								<div class="card-body">

									<div class="row g-3">

										<div class="col-7">
											<label for="inputAddress" class="form-label">Address</label>
											<input type="text" name="address.street" class="form-control" placeholder="street, locality,">
										</div>
										<div class="col-md-5">
											<label for="inputCity" class="form-label">City</label> 
											<input type="text" name="address.city" class="form-control" placeholder="City">
										</div>
										<div class="col-md-7">
											<label for="inputState" class="form-label">State</label> 
											<select class="form-select" name="address.state">
												<option selected>select state</option>
												<option>Assam</option>
												<option>NorthEast</option>
												<option>Maharastra</option>
												<option>Delhi</option>
												<option>Other</option>
											</select>
										</div>
										<div class="col-md-5">
											<label for="inputZip" class="form-label">Pin</label> 
											<input type="number" name="address.pin" class="form-control" placeholder="Zip code">
										</div>

									</div>

								</div>
							</div>


							<div class="form-group mb-3">
								<label for="courses" class="form-label">Select Courses</label> <br>
									<div class="form-check"><input class="form-check-input" type="checkbox" value="python" name="courses"> Python</div>
									<div class="form-check"><input class="form-check-input" type="checkbox" value="java" name="courses">Java </div>
									<div class="form-check"><input class="form-check-input" type="checkbox" value="android" name="courses">Android </div>
							</div>
							

							
							<div class="form-group mb-3">
								<label for="gender" class="form-label">Gender</label><br>
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
							</div>
							
							<div class="mb-4">				
								<label class="form-label">Select Student Type</label>
								<select class="form-select" name="stype" required>
									<option selected value="">choose..</option>
									<option value="new student">New Student</option>
									<option value="old student">Old Student</option>
								</select>
							
							</div>
							
							<div class="text-center mb-3">
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