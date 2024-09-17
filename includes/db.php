<?php
$servername = "sql207.infinityfree.com";
$username = "if0_37326199";
$password = "wsdfgvct";
$dbname = "if0_37326199_mindease_counseling";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    error_log("Connection failed: " . $conn->connect_error);
    die("Connection failed: " . $conn->connect_error);
}
?>
