<?php
session_start();
$servername = "localhost";
$server_user = "root";
$server_pass =" ";
$dbname = "food";
$con = new mysqli($servername, $server_user, $server_pass, $dbname);
?>