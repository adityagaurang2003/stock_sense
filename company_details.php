<?php
error_reporting(E_ALL); ini_set('display_errors', '1');  // Show all
require_once("header.php");
require_once("./config.php");
?>
<body>
<header>
<?php
require_once('nav.php');
//Listing the stocks data
if(isset($_REQUEST['symbol'])){
   $symbol = $_REQUEST['symbol'];
   // Get  the total number of records from the database
   $rows = DB::query("SELECT ci.company_id, ci.company_name, ci.symbol, ci.isin, ci.status, ci.series, ci.listingDate, ci.pdSectorInd, pi.lastPrice, pi.open, pi.upperCP, pi.lowerCP, ii.basic_industry, ii.macro, ii.sector, ii.industry FROM company_info ci LEFT JOIN price_info pi ON pi.company_info_id = ci.company_id LEFT JOIN industry_info ii ON ii.industryinfo_id=ci.industryinfo_id WHERE ci.company_id=pi.company_info_id AND ci.symbol = %s LIMIT 1", $_REQUEST['symbol']);
}
else {
   header('Location: stocks_listing.php');
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
         <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-buildings-fill" viewBox="0 0 16 16">
   <path d="M15 .5a.5.5 0 0 0-.724-.447l-8 4A.5.5 0 0 0 6 4.5v3.14L.342 9.526A.5.5 0 0 0 0 10v5.5a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5V14h1v1.5a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5zM2 11h1v1H2zm2 0h1v1H4zm-1 2v1H2v-1zm1 0h1v1H4zm9-10v1h-1V3zM8 5h1v1H8zm1 2v1H8V7zM8 9h1v1H8zm2 0h1v1h-1zm-1 2v1H8v-1zm1 0h1v1h-1zm3-2v1h-1V9zm-1 2h1v1h-1zm-2-4h1v1h-1zm3 0v1h-1V7zm-2-2v1h-1V5zm1 0h1v1h-1z"/>
   </svg> &nbsp;   
         <?= $row['company_name'] ?></th>
      </tr>
   </thead>
   <tbody>
      <tr>
        <td>Symbol</td>
         <td><?= $row['symbol'] ?></td>
      </tr>
      <tr>
      <td>Company name</td>
         <td><?= $row['company_name'] ?></td>
      </tr>
      <tr>
      <td>Macro</td>
         <td><?= $row['macro'] ?></td>
      </tr> 
      <td>sector</td>
         <td><?= $row['sector'] ?></td>
      </tr>  
      <td>industry</td>
         <td><?= $row['industry'] ?></td>
      </tr>  
      <td>Basic Industry</td>
         <td><?= $row['basic_industry'] ?></td>
      </tr>
      <td>ISIN</td>
         <td><?= $row['isin'] ?></td>
      </tr>
      <td>Status</td>
         <td><?= $row['status'] ?></td>
      </tr> 
      <td>Series</td>
         <td><?= $row['series'] ?></td>
      </tr> 
      <td>Listing Date</td>
         <td><?= $row['listingDate'] ?></td>
      </tr> 
      <td>NIFTY Type</td>
         <td><?= $row['pdSectorInd'] ?></td>
      </tr>                                                 
      <tr>
         <td>Price</td>
         <td><?= number_format($row['lastPrice'], 2) ?></td>
      </tr>
      <tr>
      <td>Open</td>
         <td><?= number_format($row['open'], 2) ?></td>
      </tr>
      <tr>
      <td>Today's High</td>
         <td><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="green" class="bi bi-arrow-up-circle-fill" viewBox="0 0 16 16">
      <path d="M16 8A8 8 0 1 0 0 8a8 8 0 0 0 16 0m-7.5 3.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707z"/>
      </svg>&nbsp;<?= number_format($row['upperCP'], 2) ?></td>
      </tr>
      <tr>
      <td>Today's Low</td>
         <td><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="red" class="bi bi-arrow-down-circle-fill" viewBox="0 0 16 16">
      <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
      </svg>&nbsp;<?= number_format($row['lowerCP'], 2) ?></td>
      </tr>
      <tr>
      <td colspan="2" class="text-center"><button type="button" class="btn btn-success" onclick="window.location='./stocks_listing.php';">Back to Equities Listing</button></td>
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