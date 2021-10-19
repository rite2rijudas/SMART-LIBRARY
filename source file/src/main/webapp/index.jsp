<!DOCTYPE html>

<html>

<head>
	<meta charset="ISO-8859-1">
	<title>User register page</title>
	<link rel="stylesheet" href="./css/index.css">
</head>
<style>

</style>

<body>
	<div id="back">
	
		<div id="back1">

			<div id="back2">
				<img src="./img/final logo.png" alt="something went worng">
				
			</div>
			<div id="back3">
				<p class="heading">REGISTER YOUR ACCOUNT NOW!!</p>
				 
					<form action="register" method="POST" class="register-form">
						<input id="user" type="text" class="input" name="userFirstName"
							placeholder="Enter your First name"><br>
						<input id="user1" type="text" class="input" name="userLastName"
							placeholder="Enter your Last name">

						<input id="pass" type="email" class="input" name="userEmail"
							placeholder="Enter your em@il address">

						<input id="pass1" type="password" class="input" data-type="password" name="userPassword"
							placeholder="Enter password">

						<input id="pass3" type="password" class="input" data-type="password" name="userFinalPassword"
							placeholder="Re-type password">

						<input type="submit" class="button" value="Register">
					</form>
					<p class="button__text" name="skip"><a href="#">Skip for now</a></p>
				<div class="foot">
					<p id="bt2">Already member ?<a href="login.jsp"><button id="bt1">Sign in</button></a></p>
				</div>
			</div>
		</div>
	</div>
</body>

</html>