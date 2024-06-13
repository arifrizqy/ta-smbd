<?php

require_once '../../logic/connector.php';

if(isset($_POST['insert'])) {

   var_dump($_POST);

   $employee_id = $_POST['employee_id'];
   $username = $_POST['username'];
   $password = $_POST['password'];
   $role_id = $_POST['role'];

   $conn->query("INSERT INTO accounts VALUES ('$employee_id', '$username', '$password', '$role_id', 1, now(), now())");

   header("Location: form.php");

} elseif (isset($_POST['update'])) {

}