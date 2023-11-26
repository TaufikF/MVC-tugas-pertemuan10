<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>By ' FikFadillah</title>
  <link href="<?= AST; ?>/css/bootstrap.min.css" rel="stylesheet">
  <link href="<?= AST; ?>/css/styles.css" rel="stylesheet">
  <link href="<?= AST; ?>/datatables/datatables.min.css" rel="stylesheet">
</head>

<body>
  <div id="wrapper">

    <!-- Sidebar -->
    <div id="sidebar-wrapper" class="shadow">
      <ul class="sidebar-nav">
        <li class="sidebar-brand border-bottom">
          <a href="#" class="fs-3">
            FikFadillah.Com
          </a>
        </li>
        <div class="data">
          <li>
            <a href="<?= URL; ?>/dashboard">Dashboard</a>
          </li>
          <li>
            <a href="<?= URL; ?>/users">Data User</a>
          </li>
          <li>
            <a href="<?= URL; ?>/golongan">Data Golongan</a>
          </li>
          <li>
            <a href="<?= URL; ?>/pelanggan">Data Pelanggan</a>
          </li>
          <br>
          <li>
            <a href="<?= URL; ?>/dashboard/logout" class="border-top text-danger fw-bold">Logout</a>
          </li>
        </div>
      </ul>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <article>
              <?php require_once ROOT . "app/views/" . $view . ".php"; ?>
            </article>

          </div>
        </div>
      </div>
      <!-- /#page-content-wrapper -->

    </div>
    <footer>
      Copyright &copy;
      <?php echo date('Y'); ?>. Designed By ' &#10084; <a href="https://www.instagram.com/fiikfadillah/"
        target="__blank">FiikFadillah</a>
    </footer>
    <!-- /#wrapper -->

    <!-- Import Modul Javascript -->
    <script src="<?= AST; ?>/js/bootstrap.bundle.min.js"></script>
    <script src="<?= AST; ?>/datatables/datatables.min.js"></script>

    <script>
      new DataTable('#dtb', {
        info: false,
        ordering: true,
        paging: true
      });
    </script>
</body>

</html>