<?php

require_once '../../logic/connector.php';

if (isset($_GET['nik'])) {
   $nik = $_GET['nik'];

   $conn->query("UPDATE employees SET is_active = 0 WHERE nik = '$nik'");
}

header("Location: index.php");