<?php
session_start();
unset($_SESSION["AID"]);
session_destroy();
header("location:userlogin.php");
?>