<?php

require_once '../../logic/connector.php';

if(isset($_POST['insert'])) {

   $nik = $_POST['nik'];
   $fullname = $_POST['fullname'];
   $gender = $_POST['gender'];
   $birthdate = $_POST['birthdate'];
   $address = $_POST['address'];
   $phone = $_POST['telp'];
   $email = $_POST['email'];  
   $citizenship = $_POST['citizenship'];

   $ress = $conn->query("INSERT INTO employees VALUES(null, '$nik', '$fullname', '$birthdate', '$gender', '$address', '$phone', '$email', '$citizenship', 1, now(), now())");

   if ($ress) {
      echo "<script>alert('Data employee berhasil ditambah')</script>";
   }

   header("Location: index.php");

} elseif (isset($_POST['update'])) {
   
   $nik = $_POST['nik'];
   $fullname = $_POST['fullname'];
   $gender = $_POST['gender'];
   $birthdate = $_POST['birthdate'];
   $address = $_POST['address'];
   $phone = $_POST['telp'];
   $email = $_POST['email'];  
   $citizenship = $_POST['citizenship'];

   $ress = $conn->query("UPDATE employees SET full_name = '$fullname', birth_date = '$birthdate', gender = '$gender', address = '$address', no_telp = '$phone', email = '$email', citizenship = '$citizenship' WHERE nik = '$nik'");

   if ($ress) {
      echo "<script>alert('Data employee berhasil ditambah')</script>";
   }

   header("Location: index.php");

}