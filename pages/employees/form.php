<?php

require_once '../../logic/connector.php';

?>

<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
      <!-- <meta name="description" content=""> -->
      <meta name="author" content="Arif Rizqy" />
      <meta name="author" content="Rizky Kurniawan" />

      <title>App TA - Users</title>

      <!-- Offline Font Awesome-->
      <link href="../../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />

      <!-- Custom fonts for this template -->
      <link rel="preconnect" href="https://fonts.googleapis.com" />
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
      <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:ital,wght@0,200..800;1,200..800&display=swap" rel="stylesheet" />

      <!-- Offline Bootstrap CSS Template -->
      <link href="../../assets/css/sb-admin-2.min.css" rel="stylesheet" />

      <!-- Offline DataTables -->
      <link href="../../vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" />
      <style>
         .box-container-1 {
            width: 50%;
            margin: 0 10px 10px 0;
         }
         .box-container-2 {
            width: 50%;
            margin-left: 10px;
         }
         .form-control {
            border: 1px solid #6f7894;
            color: #6f7894;
         }
         .form-label {
            color: #6f7894;
         }
         .bagian1 {
            width: 50%;
            margin-right: 10px;
         }
         .bagian2 {
            width: 50%;
            margin-left: 10px;
         }
      </style>
   </head>

   <body id="page-top">
      <!-- Page Wrapper -->
      <div id="wrapper">
         <!-- Sidebar -->
         <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex justify-content-center" href="index.html">
               <div class="sidebar-brand-icon rotate-n-15">
                  <i class="fas fa-fire"></i>
               </div>
               <div class="sidebar-brand-text mx-3">App TA <sup>#1</sup></div>
            </a>

            <!-- Divider -->
            <!-- <hr class="sidebar-divider my-0"> -->

            <!-- Nav Item - Dashboard -->
            <!-- <li class="nav-item active">
               <a class="nav-link" href="index.html">
                  <i class="fas fa-fw fa-tachometer-alt"></i>
                  <span>Dashboard</span>
               </a>
            </li> -->

            <!-- Divider -->
            <hr class="sidebar-divider" />

            <!-- Heading -->
            <div class="sidebar-heading">User Management</div>

            <!-- Nav Item - Employees -->
            <li class="nav-item">
               <a class="nav-link" href="../employees/index.php">
                  <i class="fas fa-users"></i>
                  <span>Employees</span>
               </a>
            </li>

            <!-- Nav Item - Employees -->
            <li class="nav-item">
               <a class="nav-link" href="../employees/index.php">
                  <i class="fas fa-users"></i>
                  <span>Employees</span>
               </a>
            </li>

            <!-- Nav Item - Accounts -->
            <!-- <li class="nav-item">
               <a class="nav-link" href="/pages/account/index.html">
                  <i class="fas fa-users"></i>
                  <span>Accounts</span>
               </a>
            </li> -->

            <!-- Nav Item - Pages Collapse Menu -->
            <!-- <li class="nav-item">
               <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                  aria-expanded="true" aria-controls="collapseTwo">
                  <i class="fas fa-fw fa-cog"></i>
                  <span>Components</span>
               </a>
               <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                  <div class="bg-white py-2 collapse-inner rounded">
                     <h6 class="collapse-header">Custom Components:</h6>
                     <a class="collapse-item" href="buttons.html">Buttons</a>
                     <a class="collapse-item" href="cards.html">Cards</a>
                  </div>
               </div>
            </li> -->

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block" />

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline justify-content-between">
               <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

            <!-- Sidebar Message -->
            <!-- <div class="sidebar-card d-none d-lg-flex">
               <img class="sidebar-card-illustration mb-2" src="img/undraw_rocket.svg" alt="...">
               <p class="text-center mb-2"><strong>SB Admin Pro</strong> is packed with premium features, components, and more!</p>
               <a class="btn btn-success btn-sm" href="https://startbootstrap.com/theme/sb-admin-pro">Upgrade to Pro!</a>
            </div> -->
         </ul>
         <!-- End of Sidebar -->

         <!-- Content Wrapper -->
         <div id="content-wrapper" class="d-flex flex-column">
            <!-- Main Content -->
            <div id="content">
               <!-- Topbar -->
               <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                  <!-- Sidebar Toggle (Topbar) -->
                  <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                     <i class="fa fa-bars"></i>
                  </button>

                  <!-- TODO: Breadcrumb -->
                  <ol class="m-0 bg-transparent breadcrumb">
                     <li class="breadcrumb-item"><a href="#">Home</a></li>
                     <li class="breadcrumb-item"><a href="index.html">Employees</a></li>
                     <li class="breadcrumb-item active" aria-current="page">Add Employee Data</li>
                  </ol>

                  <!-- Topbar Navbar -->
                  <ul class="navbar-nav ml-auto">
                     <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                     <li class="nav-item dropdown no-arrow d-sm-none">
                        <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <i class="fas fa-search fa-fw"></i>
                        </a>
                        <!-- Dropdown - Messages -->
                        <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                           <form class="form-inline mr-auto w-100 navbar-search">
                              <div class="input-group">
                                 <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
                                 <div class="input-group-append">
                                    <button class="btn btn-primary" type="button">
                                       <i class="fas fa-search fa-sm"></i>
                                    </button>
                                 </div>
                              </div>
                           </form>
                        </div>
                     </li>

                     <div class="topbar-divider d-none d-sm-block"></div>

                     <!-- Nav Item - User Information -->
                     <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <span class="mr-2 d-none d-lg-inline text-gray-600 small">Username</span>
                           <img class="img-profile rounded-circle" src="/assets/img/undraw_profile.svg" />
                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                           <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                              <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                              Logout
                           </a>
                        </div>
                     </li>
                  </ul>
               </nav>
               <!-- End of Topbar -->

               <!-- Begin Page Content -->
               <div class="container-fluid">
                  <!-- Page Heading -->
                  <div class="d-sm-flex align-items-center justify-content-between mb-4">
                     <h1 class="h3 mb-0 text-gray-800">Employee</h1>
                     <a href="index.php" class="d-sm-inline-block btn btn-outline-secondary shadow-sm">
                        <i class="mr-2 fas fa-arrow-left fa-sm"></i>
                        Back to Data Table
                     </a>
                  </div>

                  <!-- Content Row -->
                  <div class="card shadow mb-4">
                     <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Form Employee</h6>
                     </div>
                     <div class="card-body" style="margin: 10px 30px 10px 30px">
                        <?php

                        if (isset($_GET['nik'])) {
                           $dataEmployee = $conn->query("SELECT * FROM employees WHERE nik = '$_GET[nik]'")->fetch_assoc();
                        }

                        ?>

                        <form action="handler.php" method="post">
                           <div class="box-container" style="display: flex">
                              <div class="box-container-1">
                                 <label for="fullname" class="form-label">Full-name</label>
                                 <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Enter Full-name" style="margin-bottom: 25px" value="<?= isset($dataEmployee) ? $dataEmployee['full_name'] : '' ?>" required />
                              </div>
                              <div class="box-container-2" style="display: flex">
                                 <div class="bagian1">
                                    <label for="email" class="form-label">Email</label>
                                    <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email" value="<?= isset($dataEmployee) ? $dataEmployee['email'] : '' ?>" style="margin-bottom: 10px" required />
                                 </div>
                                 <div class="bagian2">
                                    <label for="telphone" class="form-label">Telephone Number</label>
                                    <input type="number" class="form-control" id="telphone" name="telp" value="<?= isset($dataEmployee) ? $dataEmployee['no_telp'] : '' ?>" placeholder="Enter No-telephone" style="margin-bottom: 10px" required />
                                 </div>
                              </div>
                           </div>
                           <div class="box-container" style="display: flex">
                              <div class="box-container-1">
                                 <div class="bagian" style="display: flex; margin-bottom: 10px">
                                    <div class="bagian1" style="margin-right: 20px">
                                       <label for="nik" class="form-label">NIK</label>
                                       <input type="number" class="form-control" id="nik" name="nik" value="<?= isset($dataEmployee) ? $dataEmployee['nik'] : '' ?>" <?= isset($dataEmployee) ? 'readonly' : '' ?> placeholder="Enter NIK" style="margin-bottom: 10px" required />
                                    </div>
                                    <div class="bagian2">
                                       <label for="citizenship" class="form-label">Citizenship</label>
                                       <div style="margin-bottom: 15px; display: flex">
                                          <input type="radio" id="wni" name="citizenship" value="WNI" style="margin-right: 5px" required <?= isset($dataEmployee) && $dataEmployee['citizenship'] == 'WNI' ? 'checked' : '' ?> />
                                          <label for="wni" style="margin-right: 10px; padding-top: 8px">WNI</label><br />
                                          <input type="radio" id="wna" name="citizenship" value="WNA" style="margin-right: 5px" required <?= isset($dataEmployee) && $dataEmployee['citizenship'] == 'WNA' ? 'checked' : '' ?> />
                                          <label for="wna" style="padding-top: 8px">WNA</label>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="bagian" style="display: flex">
                                    <div class="bagian1" style="margin-right: 20px">
                                       <label for="birthdate" class="form-label">Birth-date</label>
                                       <input type="date" class="form-control" id="birthdate" name="birthdate" value="<?= isset($dataEmployee) ? $dataEmployee['birth_date'] : '' ?>" placeholder="Enter Birth-date" style="margin-bottom: 10px" required />
                                    </div>
                                    <div class="bagian2">
                                       <label for="gender" class="form-label">Gender</label>
                                       <div style="margin-bottom: 15px; display: flex">
                                          <input type="radio" id="male" name="gender" value="L" style="margin-right: 5px" required <?= isset($dataEmployee) && $dataEmployee['gender'] == 'L' ? 'checked' : '' ?> />
                                          <label for="male" style="margin-right: 10px; padding-top: 8px">Man</label><br />
                                          <input type="radio" id="female" name="gender" value="P" style="margin-right: 5px" required <?= isset($dataEmployee) && $dataEmployee['gender'] == 'P' ? 'checked' : '' ?> />
                                          <label for="female" style="padding-top: 8px">Woman</label>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="box-container-2">
                                 <label for="address" class="form-label">Address</label>
                                 <textarea class="form-control" id="address" name="address" placeholder="Enter Address" style="margin-bottom: 15px; height: 140px" required><?= isset($dataEmployee) ? $dataEmployee['address'] : '' ?></textarea>
                              </div>
                           </div>
                           <div class="box-container" style="display: flex">
                              <div class="box-container-1"></div>
                              <div class="box-container-2">
                                 <div class="d-grid gap-2" style="margin: 20px 0 20px 0">
                                    <button class="btn" type="submit" style="background-color: #1679ab; color: white; height: 40px; width: 100%" name="<?= isset($dataEmployee) ? 'update' : 'insert' ?>">Submit</button>
                                 </div>
                              </div>
                           </div>
                        </form>
                     </div>
                  </div>
               </div>
               <!-- /.container-fluid -->
            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
               <div class="container my-auto">
                  <div class="copyright text-center my-auto">
                     <span>Copyright &copy; App TA 2024</span>
                  </div>
               </div>
            </footer>
            <!-- End of Footer -->
         </div>
         <!-- End of Content Wrapper -->
      </div>
      <!-- End of Page Wrapper -->

      <!-- Scroll to Top Button-->
      <a class="scroll-to-top rounded" href="#page-top">
         <i class="fas fa-angle-up"></i>
      </a>

      <!-- Logout Modal-->
      <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                  <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">×</span>
                  </button>
               </div>
               <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
               <div class="modal-footer">
                  <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                  <a class="btn btn-primary" href="login.html">Logout</a>
               </div>
            </div>
         </div>
      </div>

      <!-- Bootstrap core JavaScript-->
      <script src="../../vendor/jquery/jquery.min.js"></script>
      <script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

      <!-- Core plugin JavaScript-->
      <script src="../../vendor/jquery-easing/jquery.easing.min.js"></script>

      <!-- Custom scripts for all pages-->
      <script src="../../assets/js/sb-admin-2.min.js"></script>

      <!-- Page level plugins -->
      <!-- <script src="/vendor/datatables/jquery.dataTables.min.js"></script>
      <script src="/vendor/datatables/dataTables.bootstrap4.min.js"></script> -->

      <!-- <script src="/vendor/datatables/jquery.dataTables.min.js"></script> -->
      <!-- <script src="/vendor/datatables/dataTables.bootstrap4.min.js"></script> -->

      <!-- Page level custom scripts -->
      <script src="script.js"></script>
   </body>
</html>
