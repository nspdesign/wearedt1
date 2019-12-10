<?php

error_reporting(1);
/*
$servername = "localhost";
$username = "nsp2_health";
$password = "Lkjh@1234#$";
$dbname = "nsp2_health";
*/
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "puneskincare";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>