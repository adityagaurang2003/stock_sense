<footer class="py-3 my-4">
  <ul class="nav justify-content-center border-bottom pb-3 mb-3">
    <li class="nav-item"><a href="#section_1" class="nav-link px-2 text-muted">Home</a></li>
    <li class="nav-item"><a href="#section_2" class="nav-link px-2 text-muted">Features</a></li>
    <li class="nav-item"><a href="#section_3" class="nav-link px-2 text-muted">About</a></li>
  </ul>
  <p class="text-center text-muted">© 2024 StockSense</p>
</footer>
    <!-- jQuery + Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#records-limit').change(function () {
                $('#myForm').submit();
            })
        });
    </script>