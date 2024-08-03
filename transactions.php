<?php
require_once("header.php");
require_once("./config.php");
?>
<body>
<header>
<?php
require_once('nav.php');
if(isset($_SESSION['loggedin'])){
   $rows = DB::query("SELECT ci.company_name, ci.symbol, t.price, t.date, t.status, t.totalprice, t.no_of_share FROM company_info ci LEFT JOIN transactions as t ON t.company_id=ci.company_id WHERE t.uid=%i", $_SESSION['id']);
 }
?>
</header>
<div id="main" class="container cnt-mt">
<div id="example_wrapper" class="dt-container dt-bootstrap5">
   <div class="row mt-2 justify-content-md-center">
      <div class="col-12 ">  
   <table class="table table-striped table-hover table-bordered border-primary">
   <thead class="table-dark">
      <tr>
         <th colspan="8" scope="col" class="text-center">
         <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-card-checklist" viewBox="0 0 16 16">
  <path d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2z"/>
  <path d="M7 5.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5m-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 1 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0M7 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5m-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 0 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0"/>
</svg> &nbsp;   
         My Transaction(s)</th>
      </tr>
   </thead>
   <tbody>
      <tr>
         <th scope="col">#</td>
         <th scope="col">Equity Name</td>
         <th scope="col">Symbol</td>
         <th scope="col">No of share(s)</td>
         <th scope="col">Price</td>
         <th scope="col">Total Price</td>
         <th scope="col">Status</td>
         <th scope="col">Date</td>
      </tr>
      <?php 
      $i = 1;
      foreach ($rows as $row) : ?>
      <tr>
         <td scope="row"><?= $i ?></td>
         <td><?= $row['company_name'] ?></td>
         <td><?= $row['symbol'] ?></td>
         <td><?= $row['no_of_share'] ?></td>
         <td><?= $row['price'] ?></td>
         <td><?= number_format($row['totalprice'], 2); ?></td>
         <td><?= ucfirst($row['status']) ?></td>
         <td><?= $row['date'] ?></td>
      </tr>
      <?php
      $i ++;
      endforeach; 
      ?>
   </tbody>
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