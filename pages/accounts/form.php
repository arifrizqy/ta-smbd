<?php 

require '../../logic/connector.php';

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

      <title>App TA - Form Account</title>

      <!-- Offline Font Awesome-->
      <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />

      <!-- Custom fonts for this template -->
      <link rel="preconnect" href="https://fonts.googleapis.com" />
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
      <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:ital,wght@0,200..800;1,200..800&display=swap" rel="stylesheet" />

      <!-- Offline Bootstrap CSS Template -->
      <link href="/assets/css/sb-admin-2.min.css" rel="stylesheet" />

      <!-- Offline DataTables -->
      <link href="/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" />

      <style>
         .form-control {
            border: 1px solid #6f7894;
            color: #6f7894;
        }
        .form-label{
            color: #6f7894;
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
               <a class="nav-link" href="/pages/employees/index.html">
                  <i class="fas fa-users"></i>
                  <span>Employees</span>
               </a>
            </li>

            <!-- Nav Item - Accounts -->
            <li class="nav-item">
               <a class="nav-link" href="/pages/accounts/index.html">
                  <i class="fas fa-users"></i>
                  <span>Accounts</span>
               </a>
            </li>

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
                     <li class="breadcrumb-item"><a href="#">Library</a></li>
                     <li class="breadcrumb-item active" aria-current="page">Data</li>
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
                     <h1 class="h3 mb-0 text-gray-800">Add New Account</h1>
                     <a href="#" class="d-sm-inline-block btn btn-outline-secondary shadow-sm">
                        <i class="mr-2 fas fa-arrow-left fa-sm"></i>
                        Back to Data Table
                     </a>
                  </div>

                  <div class="row" style="display: flex;">
                     <!-- Content Row -->
                     <div class="card shadow mb-4" style="width: 49%; margin-right: 10px;">
                        <div class="card-header py-3">
                           <h6 class="m-0 font-weight-bold text-primary">Form Account</h6>
                        </div>
                        <div class="card-body" style="margin: 10px 30px 10px 30px;">
                           <form action="handler.php" method="post">
                                 <div class="form-group" style="margin-bottom: 30px;">
                                    <label for="employeeData">Choose Employee</label>
                                    <select class="form-control" id="employeeData" name="employee_id" required>
                                       <option value="" selected disabled>--&lt; Data Employee &gt;--</option>
                                       <?php

                                       $dataEmployee = $conn->query("SELECT * FROM employees WHERE is_active = '1'")->fetch_all(MYSQLI_ASSOC);

                                       foreach ($dataEmployee as $employee) {

                                          ?>
                                          <option value="<?= $employee['id'] ?>" <?= (isset($_GET['nik']) && $employee['nik'] === $_GET['nik']) ? 'selected' : '' ?>><?= $employee['nik'] ?> - <?= $employee['full_name'] ?></option>
                                          <?php
                                          
                                       }

                                       ?>
                                    </select>
                                 </div>
                                 <div class="form-row mb-2">
                                    <div class="form-group col-5">
                                       <label for="username">Username</label>
                                       <input class="form-control" type="text" name="username" id="username" required />
                                    </div>
                                    <div class="form-group col-7">
                                       <label for="password">Password</label>
                                       <div class="input-group mb-3">
                                          <input type="text" class="form-control" id="password" name="password" aria-describedby="button-addon2" readonly required />
                                          <div class="input-group-append">
                                             <button class="btn btn-outline-primary" type="button" id="btnGeneratePassword">
                                                <i class="mr-1 fas fa-random"></i>
                                                Generate
                                             </button>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="table-responsive" style="height: 300px">
                                    <table class="table table-hover" id="rolesPermissions" width="100%" cellspacing="0">
                                       <thead>
                                          <tr>
                                             <th>#</th>
                                             <th class="col-5">Role Name</th>
                                             <th class="col-7">Permission</th>
                                          </tr>
                                       </thead>
                                       <tbody>

                                          <?php
                                          
                                          $dataRole = $conn->query("SELECT * FROM roles")->fetch_all(MYSQLI_ASSOC);
                                          foreach ($dataRole as $role) {
                                             ?>
                                             <tr>
                                                <td style="vertical-align: middle; font-weight: bold" align="center">
                                                   <input type="radio" name="role" value="<?= $role['id'] ?>" required />
                                                </td>
                                                <td style="vertical-align: middle"><?= $role['role_name'] ?></td>
                                                <td>
                                                   <dl class="m-0" style="height: 150px; overflow-y: scroll">
                                                      <div>

                                                         <?php

                                                         $sqlQuery = "SELECT menus.id, menu_name FROM permissions perm JOIN menus ON perm.menu_id = menus.id JOIN role_permissions rp ON rp.menu_id = perm.menu_id AND rp.feature_id = perm.feature_id WHERE rp.role_id = '" . $role['id'] . "'";
                                                         
                                                         $dataMenu = $conn->query($sqlQuery)->fetch_all(MYSQLI_ASSOC);
                                                         foreach ($dataMenu as $menu) {
                                                            ?>
                                                            <dt class="mb-2"><?= $menu['menu_name'] ?></dt>
                                                            <?php

                                                            $dataPermission = $conn->query("SELECT permission_name FROM permissions WHERE menu_id = '" . $menu['id'] . "'")->fetch_all(MYSQLI_ASSOC);
                                                            foreach ($dataPermission as $permission) {
                                                               ?>
                                                               <dd class="ml-4 mb-1"><?= $permission['permission_name'] ?></dd>
                                                               <?php
                                                            }

                                                         }

                                                         ?>
                                                      </div>
                                                   </dl>
                                                </td>
                                             </tr>
                                             <?php
                                          }

                                          ?>
                                       </tbody>
                                    </table>
                                 </div>
                              <div class="d-grid gap-2" style="margin: 40px 0 20px 0;">
                                 <button class="btn" type="submit" style="background-color: #1679AB; color: white; height: 40px; width: 100%;" name="insert">Create Account</button>
                              </div>
                           </form>
                        </div>
                     </div>
                     <div class="col-6">
                        <div class="card shadow mb-4">
                           <div class="card-header py-3">
                              <h6 class="m-0 font-weight-bold text-primary">Role (Exclusive)</h6>
                           </div>
                           <div class="card-body" style="margin: 10px 30px 10px 30px;">
                              <form method="post">
                                 <div class="form-group">
                                    <label for="role">Role Name</label>
                                    <input type="text" class="form-control" id="role" name="role" placeholder="Enter Role Name" style="margin-bottom: 30px;">
                                    <label for="description" class="form-label">Description</label>
                                    <textarea class="form-control" id="description" name="description" placeholder="Enter Description" style="margin-bottom: 30px; height: 140px;"></textarea>
                                 </div>
                                 <div class="form-group" style="margin-bottom: 30px; display: flex;">
                                    <div class="bagian1" style="margin: 0 5px 0 0; width: 50%;">
                                       <label for="menu">Choose Menu</label>
                                       <select class="form-control" id="menu" required>
                                          <option selected disabled>--&lt; Data Menus &gt;--</option>
                                          <option value="#">Menu 1</option>
                                          <option value="#">Menu 2</option>
                                          <option value="#">Menu 3</option>
                                          <option value="#">Menu 4</option>
                                          <option value="#">Menu 5</option>
                                       </select>
                                    </div>
                                    <div class="bagian2" style="margin: 0 0 0 5px; width: 50%;">
                                       <label for="function">Choose Feature</label>
                                       <select class="form-control" id="Function" required>
                                          <option selected disabled>--&lt; Data Function &gt;--</option>
                                          <option value="#">Function 1</option>
                                          <option value="#">Function 2</option>
                                          <option value="#">Function 3</option>
                                          <option value="#">Function 4</option>
                                          <option value="#">Function 5</option>
                                       </select>
                                    </div>
                                 </div>
                                 <div class="d-grid gap-2" style="margin: 40px 0 20px 0;">
                                    <button class="btn" type="submit" style="background-color: #1679AB; color: white; height: 40px; width: 100%;" name="submit">Create Role</button>
                                 </div>
                              </form>
                           </div>
                        </div>
                     </div>
                     <div class="col-12">
                        <div class="card shadow mb-4">
                           <div class="card-header py-3">
                              <h6 class="m-0 font-weight-bold text-primary">Data Account</h6>
                           </div>
                           <div class="card-body">
                              <div class="table-responsive">
                                 <table class="table table-hover" id="dataAccount" width="100%" cellspacing="0">
                                    <thead>
                                       <tr>
                                          <th style="max-width: 30px">#</th>
                                          <th class="col-2">Full Name</th>
                                          <th class="col-2">Username</th>
                                          <th class="col-2">Role</th>
                                          <th class="col-1">Actions</th>
                                       </tr>
                                    </thead>
                                    <tbody>
                                       <?php 
                                       
                                       $no = 1;

                                       $dataAccount = $conn->query("SELECT employees.id, employees.nik, employees.full_name, accounts.username, roles.role_name FROM accounts JOIN employees ON accounts.employee_id = employees.id JOIN roles ON accounts.role_id = roles.id WHERE accounts.is_active = 1")->fetch_all(MYSQLI_ASSOC);
                                       foreach($dataAccount as $account) {
                                          ?>
                                          <tr>
                                             <td style="vertical-align: middle; font-weight: bold;" align="center"><?= $no ?></td>
                                             <td style="vertical-align: middle"><?= $account['full_name'] ?></td>
                                             <td style="vertical-align: middle"><?= $account['username'] ?></td>
                                             <td style="vertical-align: middle"><?= $account['role_name'] ?></td>
                                             <td class="d-flex flex-column align-items-start">
                                                <a href="#" class="mb-1 btn btn-outline-info btn-sm d-flex align-items-center">
                                                   <i class="mr-1 fas fa-info-circle"></i>
                                                   Detail
                                                </a>
                                                <a href="form.php?nik=<?= $account['nik'] ?>" class="mb-1 btn btn-outline-warning btn-sm d-flex align-items-center">
                                                   <i class="mr-1 fas fa-edit"></i>
                                                   Update
                                                </a>
                                                <a href="delete.php?id=<?= $account['id'] ?>" class="btn btn-outline-danger btn-sm d-flex align-items-center">
                                                   <i class="mr-1 fas fa-trash"></i>
                                                   Delete
                                                </a>
                                             </td>
                                          </tr>
                                          <?php
                                          $no++;
                                       }

                                       ?>
                                    </tbody>
                                 </table>
                              </div>
                           </div>
                        </div>
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
      <script src="/vendor/jquery/jquery.min.js"></script>
      <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

      <!-- Core plugin JavaScript-->
      <script src="/vendor/jquery-easing/jquery.easing.min.js"></script>

      <!-- Custom scripts for all pages-->
      <script src="/assets/js/sb-admin-2.min.js"></script>

      <!-- Page level plugins -->
      <!-- <script src="/vendor/datatables/jquery.dataTables.min.js"></script>
      <script src="/vendor/datatables/dataTables.bootstrap4.min.js"></script> -->

      <script src="/vendor/datatables/jquery.dataTables.min.js"></script>
      <script src="/vendor/datatables/dataTables.bootstrap4.min.js"></script>

      <!-- Page level custom scripts -->
      <script src="script.js"></script>
   </body>
</html>
