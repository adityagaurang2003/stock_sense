<?php
require_once("config.php");

// POST data
$showAlert = false;
$showError = false;
$exists=false;

if($_SERVER["REQUEST_METHOD"] == "POST") {

    $first = $_POST["first"];
    $last = $_POST["last"];
    $email = $_POST["email"];
	$dob = $_POST["dob"];
	$password = $_POST["password"];
	$repassword = $_POST["repassword"];
	$mobile = $_POST["mobile"];
	$gender = $_POST["gender"];

	if(($password == $repassword) && $exists==false) {
		// Password Hashing is used here.
		$hash = password_hash($password,
							PASSWORD_DEFAULT);
		//DB::$error_handler = false; // since we're catching errors, don't need error handler
		//DB::$throw_exception_on_error = true;

		try {
			// try to insert something with a primary key that already exists
			// will cause an exception to get thrown, and we'll catch it
			DB::insert('users', array(
				'first_name' => $first,
				'last_name' => $last,
				'email' => $email,
				'dob' => $dob,
				'password' => $hash,
				'mobile' => $mobile,
				'gender' => $gender
				));

				$showAlert = true;
			} catch(MeekroDBException $e) {
				$showError = $e->getMessage() ; // something about duplicate keys
			}
	}

}//end if

?>
<html>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registration Form</title>
		<link rel="stylesheet" href="./assets/bootstrap/css/bootstrap.min.css">
		<link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Playball&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="./assets/bootstrap/css/bootstrap.min.css">
		<script src="./assets/bootstrap/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="./assets/css/register_style.css">
		<script src="./assets/js/register_script.js"></script>
    </head>

<body>
	<div class="main">
<?php
// On error display the message
if($showAlert) {
	echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
	<strong>Success!</strong> Your account is now created and you can login.
	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>';
}

if($showError) {
	echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">
	<strong>Error!</strong> '. $showError.'
	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>';
}

if($exists) {
	echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">
	<strong>Error!</strong> '. $exists.'
	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>';
}
?>
		<br>
		<p class="playball-regular">StockSense</p>
		<form action="register.php" method="post">
			<label for="first">First Name:</label>
			<input type="text" id="first"
				name="first"
				placeholder="Enter your first name" required>

			<label for="last">Last Name:</label>
			<input type="text" id="last"
				name="last"
				placeholder="Enter your last name" required>

			<label for="email">Email:</label>
			<input type="email" id="email"
				name="email"
				placeholder="Enter your email" required>

			<label for="dob">Date of Birth:</label>
			<input type="date"
				id="dob" name="dob"
				placeholder="Enter your DOB" required>

			<label for="password">Password:</label>
			<input type="password" id="password"
				name="password"
				placeholder="Enter your password"
				pattern=
				"^(?=.*\d)(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9])\S{8,}$" required
				title="Password must contain at least one number,
					one alphabet, one symbol, and be at
					least 8 characters long">

			<label for="repassword">Re-type Password:</label>
			<input type="password" id="repassword"
				name="repassword"
				placeholder="Re-Enter your password" required>
			<span id="pass"></span>

			<label for="mobile">Contact:</label>
			<input type="text" id="mobile"
				name="mobile"
				placeholder="Enter your Mobile Number" required
				maxlength="10">

			<label for="gender">Gender:</label>
			<select id="gender" name="gender" required>
				<option value="male">Male</option>
				<option value="female">Female</option>
				<option value="other">Other</option>
			</select>

			<div class="wrap">
				<button class="button-25" type="submit" onclick="solve()">
				Submit
				</button>
			</div>
			<div class="wrap">
			You have registered? <a href="login.php">Login</a>
			</div>
		</form>
	</div>
</body>
</html>