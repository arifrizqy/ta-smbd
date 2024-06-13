<?php

require_once '../../logic/connector.php';

if (isset($_GET['id'])) {
   $employee_id = $_GET['id'];

   $conn->query("UPDATE accounts SET is_active = 0 WHERE employee_id = '$employee_id'");
}

header("Location: form.php");