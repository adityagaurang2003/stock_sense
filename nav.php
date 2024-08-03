<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container-fluid">
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <a class="navbar-brand playball-regular ms-5" href="index.php">StockSense</a>
      <div class="collapse navbar-collapse justify-content-center" id="navbarTogglerDemo03">
      <?php
        if(isset($_SESSION['loggedin'])){ 
        ?>  
      <ul class="navbar-nav mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="stocks_listing.php">Equities</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="portfolio.php">Portfolio</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="transactions.php">transactions</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="profile.php">Profile</a>
          </li>
        </ul>
        <?php } else {
        ?>
        <ul class="navbar-nav mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#section_1">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#section_2">Features</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#section_3">About Us</a>
          </li>
        </ul>
        <?php } ?>
      </div>
    </div>
	<div class="float-end col-md-2">
    <?php
        if(isset($_SESSION['loggedin'])){
        ?>
        <div class="dropdown text-end pe-2">
  <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle hide" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="true">
  <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/>
  <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1"/>
</svg>
  </a>
  <ul class="dropdown-menu text-small hide" aria-labelledby="dropdownUser1" data-popper-placement="top-end">
	<li><a class="dropdown-item" href="profile.php">Profile</a></li>
	<li><hr class="dropdown-divider"></li>
	<li><a class="dropdown-item" href="signout.php">Sign out</a></li>
  </ul>
</div>
        <?php 
        } else {

    ?>
	  <button type="button" class="btn btn-outline-primary me-2" onclick="window.location='login.php';">Login</button>
	  <button type="button" class="btn btn-primary"onclick="window.location='register.php';">Sign-up</button>
      <?php }?>
	</div>
  </nav>