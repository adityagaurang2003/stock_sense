<?php
require_once("header.php");
require_once("./config.php");
?>
<body>
<header>
<?php
require_once('nav.php');
if(isset($_SESSION['loggedin'])){
   $rows = DB::query("SELECT * FROM users WHERE uid=%i LIMIT 1", $_SESSION['id']);
 }
?>
</header>
<div id="main" class="container cnt-mt">
<div id="example_wrapper" class="dt-container dt-bootstrap5">
   <div class="row mt-2 justify-content-md-center">
      <div class="col-12 ">  
   <table class="table table-striped table-hover table-bordered border-primary">
   <thead class="table-dark">
      <?php foreach ($rows as $row) : ?>
      <tr>
         <th colspan="2" scope="col" class="text-center">
         <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-person-bounding-box" viewBox="0 0 16 16">
  <path d="M1.5 1a.5.5 0 0 0-.5.5v3a.5.5 0 0 1-1 0v-3A1.5 1.5 0 0 1 1.5 0h3a.5.5 0 0 1 0 1zM11 .5a.5.5 0 0 1 .5-.5h3A1.5 1.5 0 0 1 16 1.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 1-.5-.5M.5 11a.5.5 0 0 1 .5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 1 0 1h-3A1.5 1.5 0 0 1 0 14.5v-3a.5.5 0 0 1 .5-.5m15 0a.5.5 0 0 1 .5.5v3a1.5 1.5 0 0 1-1.5 1.5h-3a.5.5 0 0 1 0-1h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 1 .5-.5"/>
  <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1zm8-9a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/>
</svg> &nbsp;   
         User Detail</th>
      </tr>
   </thead>
   <tbody>
      <tr>
        <td>First Name</td>
         <td><?= ucfirst($row['first_name']) ?></td>
      </tr>
      <tr>
      <td>Last Name</td>
         <td><?= ucfirst($row['last_name']) ?></td>
      </tr>
      <tr>
      <td>Email</td>
         <td><?= $row['email'] ?></td>
      </tr> 
      <td>Mobile</td>
         <td><?= $row['mobile'] ?></td>
      </tr>  
      <td>Date Of Birth</td>
         <td><?= $row['dob'] ?></td>
      </tr>  
      <td>Gender</td>
         <td><?= ucfirst($row['gender']) ?></td>
      </tr>
      <td>Registered on</td>
         <td><?= $row['timestamp'] ?></td>
      </tr>
      <tr>
      <td colspan="2" class="text-center"><button type="button" class="btn btn-success" onclick="window.location='./portfolio.php';">My portfolio</button></td>
     </tr>
   </tbody>
   <?php endforeach; ?>
   </table>
		<!-- Button trigger modal -->
</div>
   </div>
</div>
<?php
require_once("footer.php");
?>
</div>
</body>
</html>