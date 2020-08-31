<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Authentification Basique</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>	
	<div class="container">
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<div class="card mt-5">
					<div class="card-header bg-primary text-white">Authentification basique</div>
					<div class="card-body">
						<form action="/loginHandler" method="post">
							<div class="form-group">
								<label>Login:</label>
								<input type="text" name="login" class="form-control" placeholder="Entrer votre login svp ...">
							</div>
							<div class="form-group">
								<label>Password:</label>
								<input type="text" name="password" class="form-control" placeholder="*****************">
							</div>
							<div class="form-group">
								<input type="submit" name="submit" class="form-control btn btn-outline-primary" value="Se connecter">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>