<?php
require_once("config.php");
session_start();
$showError = "";
$showAlert = "";
// Now we check if the data from the login form was submitted, isset() will check if the data exists.
if ( !isset($_POST['email'], $_POST['password']) ) {
	// Could not get the data that should have been sent.
	$showError = 'Please fill both the email and password fields!';
    } else {
        $account = DB::queryFirstRow("SELECT * FROM users WHERE email=%s", $_POST['email']);
        if($account['uid'] > 0) {
            // Account exists, now we verify the password.
            // Note: remember to use password_hash in your registration file to store the hashed passwords.
            if (password_verify($_POST['password'], $account['password'])) {
                // Verification success! User has logged-in!
                // Create sessions, so we know the user is logged in, they basically act like cookies but remember the data on the server.
                session_regenerate_id();
                $_SESSION['loggedin'] = TRUE;
                $_SESSION['name'] = $account['first_name'];
                $_SESSION['id'] = $account['uid'];
                $showAlert = 1;
                header('Location: dashboard.php');
                die();
            } else {
                // Incorrect password
                $showError = 'Incorrect username and/or password!';
            }
        }
}
?>
<html>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>login</title>
		<link rel="stylesheet" href="./assets/bootstrap/css/bootstrap.min.css">
		<link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Playball&display=swap" rel="stylesheet">
        <script src="./assets/bootstrap/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="./assets/css/login_style.css">
    </head>
    <body>
<?php
if($showError) {
	echo '<div class="alert alert-danger alert-dismissible fade show" role="alert">
	<strong>Error!</strong> '. $showError.'
	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>';
}
if($showAlert) {
	echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
	<strong>Success!</strong> Welcome back, ' . htmlspecialchars($_SESSION['name'], ENT_QUOTES) . '!
	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>';
}
?>
        <div class="main">
            <div class="content">
                <span class="navbar-brand playball-regular logosize">StockSense</span>
                <br>
                <h4>Enter your login credentials</h4>
                <form action="login.php" method="post">
                    <label for="first">
                          Email:
                      </label>
                    <input type="text"
                           id="first"
                           name="email"
                           placeholder="Enter your Email" required>
                    <label for="password">
                      Password:
                    </label>
                    <input type="password"
                       id="password"
                       name="password"
                       placeholder="Enter your Password" required>

                    <div class="wrap">
                        <button type="submit"
                            onclick="solve()" class="button-25">
                             Submit
                         </button>
                    </div>
                </form>
                <p>Not registered?
                    <a href="register.php">
                        Create an account
                    </a>
                </p>
            </div>
        </div>
    </body>
</html>