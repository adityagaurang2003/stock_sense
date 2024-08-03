<?php
require_once("header.php");
require_once("./libraries/meekrodb/db.class.php");
?>
<body>
<header>
<?php
require_once('nav.php');
?>
</header>
<div id="main" class="container cnt-mt">
<div class="row" id="section_1">
  <div class="column_1">
    <div class="rowone_fontadjust">
      <h3 class="our_font_keywrd">Dashboard</h3><h3 class="our_font"> Your Guide to Smart Investing</h3>
      <br>
      <h5 class="our_font">StockSense empowers you to navigate the stock market with confidence, offering comprehensive tools and analytics to maximize your investment potential.</h5>
    </div>
  </div>

  <div class="column_1">
    <img src="assets/images/virgin_homepage.jpg" alt="Stocksense" class="maini-mage">
  </div>
</div>
<hr>
<br>
<div class="row" id="section_2">
  <div class="col-md-4 right-border">
    <br>
    <img src="assets/images/realtimedata.png" alt="realtimedata" class="feature_images">
    <br>
    <br>
    <h4 class="our_font_keywrd_center" >Real-time stock data</h4>
    <br>
    <h6 class="our_font_center">Track prices, charts, and news for all major stocks and indices, with customizable watchlists to keep an eye on your favorite investments.</h6>
  </div>

  <div class="col-md-4">
    <br>
    <img src="assets/images/portfolio.png" alt="portfolio" class="feature_images">
    <br>
    <br>
    <h4 class="our_font_keywrd_center">Portfolio Tracking</h4>
    <br>
    <h6 class="our_font_center">Monitor your investments' performance in real-time, track overall returns, and analyze individual holdings.</h6>
  </div>

  <div class="col-md-4 left-border">
    <br>
    <img src="assets/images/data_analytics.png" alt="Stocksense" class="feature_images">
    <br>
    <br>
    <h4 class="our_font_keywrd_center">Technical Analysis Tools</h4>
    <br>
    <h6 class="our_font_center">Utilize advanced charting tools and technical indicators to identify potential trading opportunities.</h6>
  </div>
</div>
<?php
require_once("footer.php");
?>
</div>
</body>
</html>