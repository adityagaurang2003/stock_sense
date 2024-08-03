<?php
error_reporting(E_ALL); ini_set('display_errors', '1');  // Show all
require_once("header.php");
require_once("./config.php");
?>
<body>
<header>
<?php
require_once('nav.php');

// Save to profile
if($_SERVER["REQUEST_METHOD"] == "POST" && $_POST['status']) {
  if($_POST['status'] == 'sell'){
    $check = DB::queryFirstRow("SELECT * FROM transactions WHERE status='buy' AND no_of_share >= %i AND company_id=%i AND uid=%i", $_POST['no_of_share'], $_POST['cid'], $_POST['uid']);
    if(empty($check)){
      echo '<script language="javascript">';
      echo "alert('You do not own this share!')";
      echo '</script>';   
    } else {
      try {
        DB::insert('transactions', array(
          'company_id' => $_POST['cid'],
          'uid' => $_POST['uid'],
          'status' => $_POST['status'],
          'price' => $_POST['price'],
          'totalprice' => $_POST['price'] * $_POST['no_of_share'],
          'no_of_share' =>  $_POST['no_of_share']
          ));

          // Update in portfolio
          $transaction_id = DB::insertId();
          $check = DB::queryFirstRow("SELECT * FROM portfolio WHERE company_id=%i AND no_of_share >= %i AND uid = %i", $_POST['cid'], $_POST['no_of_share'], $_POST['uid']);
          if (!empty($check)) {
            $no_of_shares =  $check['no_of_share'] - $_POST['no_of_share'];
            $total_price = $_POST['price'] * $no_of_shares;
            if ($no_of_shares == 0) {
              // Delete the tuple from the portfolio
              DB::query("DELETE FROM portfolio WHERE company_id=%i AND uid=%i", $_POST['cid'], $_POST['uid']);
            } else {
              // Update the portfolio
              DB::query("UPDATE portfolio SET totalprice=%i, no_of_share=%i WHERE company_id=%i AND uid=%i", $total_price, $no_of_shares, $_POST['cid'], $_POST['uid']);
            }
          } else {
            // Insert new record into the portfolio
            DB::insertUpdate('portfolio', [
            'transaction_id' => $transaction_id,
            'company_id' => $_POST['cid'],
            'uid' => $_POST['uid'],
            'price' => $_POST['price'],
            'totalprice' => $_POST['price'] * $_POST['no_of_share'],
            'no_of_share' =>  $_POST['no_of_share']
            ]);
          }


          echo '<script language="javascript">';
          echo "alert('Order placed successfully!')";
          echo '</script>';      
        } catch(MeekroDBException $e) {
          echo '<script language="javascript">';
          echo "alert($e->getMessage())";
          echo '</script>';
        }  
    }
  }
  if($_POST['status'] == 'buy') {
  try {
    // try to insert something with a primary key that already exists
    // will cause an exception to get thrown, and we'll catch it
      DB::insert('transactions', array(
        'company_id' => $_POST['cid'],
        'uid' => $_POST['uid'],
        'status' => $_POST['status'],
        'price' => $_POST['price'],
        'totalprice' => $_POST['price'] * $_POST['no_of_share'],
        'no_of_share' =>  $_POST['no_of_share']
        ));

      $transaction_id = DB::insertId(); // which id did it choose?!? tell me!!
      $check = DB::queryFirstRow("SELECT * FROM portfolio WHERE company_id=%i AND uid=%i", $_POST['cid'], $_POST['uid']);
      if(!empty($check)){
        $no_of_shares = $_POST['no_of_share'] + $check['no_of_share'];
        $total_price = $_POST['price'] * $no_of_shares;
        DB::query("UPDATE portfolio SET totalprice=%i, no_of_share=%i WHERE company_id=%i AND uid=%i", $total_price, $no_of_shares, $_POST['cid'],$_POST['uid']);
      } else {
        // update the portfolio
        DB::insertUpdate('portfolio', [
          'transaction_id' => $transaction_id,
          'company_id' => $_POST['cid'],
          'uid' => $_POST['uid'],
          'price' => $_POST['price'],
          'totalprice' => $_POST['price'] * $_POST['no_of_share'],
          'no_of_share' =>  $_POST['no_of_share']
        ]);
      }
      echo '<script language="javascript">';
      echo "alert('Order placed successfully!')";
      echo '</script>';      
    } catch(MeekroDBException $e) {
      echo '<script language="javascript">';
      echo "alert($e->getMessage())";
      echo '</script>';
    }
  }
}

//Listing the stocks data
if(isset($_POST['records-limit'])){
  unset($_SESSION['records-limit']);
  $_SESSION['records-limit'] = $_POST['records-limit'];
}

$limit = isset($_SESSION['records-limit']) ? $_SESSION['records-limit'] : 5;
$page = (isset($_GET['page']) && is_numeric($_GET['page']) ) ? $_GET['page'] : 1;
$paginationStart = ($page - 1) * $limit;
// Get  the total number of records from the database
if(isset($_POST['listing_search'])) {
  $listing_search = $_POST['listing_search'];
  $rows = DB::query("SELECT ci.company_id, ci.company_name, ci.symbol , pi.lastPrice, pi.open, pi.upperCP, pi.lowerCP FROM company_info ci LEFT JOIN price_info pi ON pi.company_info_id = ci.company_id WHERE ci.company_id=pi.company_info_id AND ci.company_name LIKE %ss GROUP BY ci.symbol LIMIT $paginationStart, $limit",$listing_search);
} else {
  $rows = DB::query("SELECT ci.company_id, ci.company_name, ci.symbol , pi.lastPrice, pi.open, pi.upperCP, pi.lowerCP FROM company_info ci LEFT JOIN price_info pi ON pi.company_info_id = ci.company_id WHERE ci.company_id=pi.company_info_id LIMIT $paginationStart, $limit");
}
// Get total records
$allRecrods = DB::query("SELECT * FROM company_info");
// Calculate total pages
$totoalPages = ceil(count($allRecrods) / $limit);
// Prev + Next
$prev = $page - 1;
$next = $page + 1;
?>
</header>
<div id="main" class="container cnt-mt">
<div id="example_wrapper" class="dt-container dt-bootstrap5">
   <div class="row mt-2 justify-content-between">
      <div class="col-md-auto me-auto ">
         <div class="dt-length">
         <form id="myForm" action="stocks_listing.php" method="post">
            <select  name="records-limit" id="records-limit" aria-controls="example" class="form-select form-select-sm">
               <option disabled selected>Records Limit</option>
               <?php foreach([5,10,20,50,100] as $limit) : ?>
                <option
                    <?php if(isset($_SESSION['records-limit']) && $_SESSION['records-limit'] == $limit) echo 'selected'; ?>
                    value="<?= $limit; ?>">
                    <?= $limit; ?>
                </option>
               <?php endforeach; ?>
            </select>
            </form>
            <label for="records-limit">Entries per page</label>
         </div>
      </div>
      <div class="col-md-auto ms-auto ">
      <form action="stocks_listing.php" method="post">
         <div class="dt-search"><label for="dt-search-0">Search:</label><input type="search" class="form-control form-control-sm" name="listing_search" id="dt-search-0" placeholder="" aria-controls="example"></div>
      </form>   
      </div>
   </div>
   <div class="row mt-2 justify-content-md-center">
      <div class="col-12 ">  
<table class="table table-striped table-hover table-bordered border-primary">
  <thead class="table-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">SYMBOL</th>
      <th scope="col">COMPANY NAME</th>
      <th scope="col">PRICE</th>
      <th scope="col">OPEN</th>
      <th scope="col">HIGH</th>
      <th scope="col">LOW</th>
      <th colspan="2" scope="col" class="text-center">ACTION</th>
    </tr>
  </thead>
  <tbody>
    <?php
  $i = 1;
	foreach ($rows as $row) : ?>
      <!-- BUY Modal -->
      <div class="modal fade" id="buyModalLabel<?=$i?>" tabindex="-1" aria-labelledby="buyModalLabel<?=$i?>" aria-hidden="true">
      <div class="modal-dialog">
        <form action="stocks_listing.php" id="buy" method="POST">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Attention!</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
          <ul class="list-group">
            <li class="list-group-item"><?= $row['company_name'] ?></li>
            <li class="list-group-item"><?= $row['symbol'] ?></li>
            <li class="list-group-item">INR <?= number_format($row['lastPrice'], 2) ?></li>
          </ul> 
          <div class="mb-3">
            <label for="no_of_share" class="col-form-label">No of share(s):</label>
            <input type="number" class="form-control" id="no_of_share" name="no_of_share">
          </div>
          </div>
          <div class="modal-footer">
            <input  type="hidden" name="status" value="buy"/>
            <input  type="hidden" name="uid" value="<?=$_SESSION['id']?>"/>
            <input  type="hidden" name="cid" value="<?=$row['company_id']?>"/>
            <input  type="hidden" name="price" value="<?=$row['lastPrice']?>"/>
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <input class="btn btn-primary" type="submit" value="Submit">
          </div>
        </div>
        </form>
      </div>
    </div>
    <!-- BUY Modal -->
      <!-- SELL Modal -->
      <div class="modal fade" id="sellModalLabel<?=$i?>" tabindex="-1" aria-labelledby="sellModalLabel<?=$i?>" aria-hidden="true">
      <div class="modal-dialog">
        <form action="stocks_listing.php" id="sell" method="POST">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Attention!</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
          <ul class="list-group">
            <li class="list-group-item"><?= $row['company_name'] ?></li>
            <li class="list-group-item"><?= $row['symbol'] ?></li>
            <li class="list-group-item">INR <?= number_format($row['lastPrice'], 2) ?></li>
          </ul> 
          <div class="mb-3">
            <label for="no_of_share" class="col-form-label">No of share(s):</label>
            <input type="number" class="form-control" id="no_of_share" name="no_of_share">
          </div>
          </div>
          <div class="modal-footer">
            <input  type="hidden" name="status" value="sell"/>
            <input  type="hidden" name="uid" value="<?=$_SESSION['id']?>"/>
            <input  type="hidden" name="cid" value="<?=$row['company_id']?>"/>
            <input  type="hidden" name="price" value="<?=$row['lastPrice']?>"/>
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <input class="btn btn-primary" type="submit" value="Submit">
          </div>
        </div>
        </form>
      </div>
    </div>
    <!-- SELL Modal -->    
    <tr>
      <th scope="row"><?= $i ?></th>
      <td><a href="company_details.php?symbol=<?=$row['symbol']?>"><?= $row['symbol'] ?></a></td>
      <td><?= $row['company_name'] ?></td>
      <td><?= number_format($row['lastPrice'], 2) ?></td>
      <td><?= number_format($row['open'], 2) ?></td>
      <td><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="green" class="bi bi-arrow-up-circle-fill" viewBox="0 0 16 16">
  <path d="M16 8A8 8 0 1 0 0 8a8 8 0 0 0 16 0m-7.5 3.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707z"/>
</svg>&nbsp;<?= number_format($row['upperCP'], 2) ?></td>
      <td><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="red" class="bi bi-arrow-down-circle-fill" viewBox="0 0 16 16">
  <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0M8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293z"/>
</svg>&nbsp;<?= number_format($row['lowerCP'], 2) ?></td>
      <td><button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#buyModalLabel<?=$i?>">Buy</button></td>
      <td><button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#sellModalLabel<?=$i?>">Sell</button></td>
    </tr>
    <?php 
    $i ++; 
    endforeach; 
    ?>
  </tbody>
</table>

</div>
   </div>
   <div class="row mt-2 justify-content-between">
      
      <div class="col-md-auto ms-auto ">
         <div class="dt-paging paging_full_numbers">
        <!-- Pagination -->
          <nav aria-label="Page navigation example mt-5">
              <ul class="pagination justify-content-center">
                  <li class="page-item <?php if($page <= 1){ echo 'disabled'; } ?>">
                      <a class="page-link"
                          href="<?php if($page <= 1){ echo '#'; } else { echo "?page=" . $prev; } ?>">Previous</a>
                  </li>
                  <?php for($i = 1; $i <= $totoalPages; $i++ ): ?>
                  <li class="page-item <?php if($page == $i) {echo 'active'; } ?>">
                      <a class="page-link" href="stocks_listing.php?page=<?= $i; ?>"> <?= $i; ?> </a>
                  </li>
                  <?php endfor; ?>
                  <li class="page-item <?php if($page >= $totoalPages) { echo 'disabled'; } ?>">
                      <a class="page-link"
                          href="<?php if($page >= $totoalPages){ echo '#'; } else {echo "?page=". $next; } ?>">Next</a>
                  </li>
              </ul>
          </nav>
         </div>
      </div>
   </div>
</div>
<?php
require_once("footer.php");
?>
</div>
</body>
</html>