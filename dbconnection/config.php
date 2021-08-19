<?php
/* Database credentials. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
define('SITEURL', 'http://localhost/hotel/');
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'hotel');
 
/* Attempt to connect to MySQL database */
try{
    $conn = new PDO("mysql:host=" . DB_SERVER . ";dbname=" . DB_NAME, DB_USERNAME, DB_PASSWORD);
    // Set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   
// echo "ok";
    
} catch(PDOException $e){
    die("ERROR: Could not connect. " . $e->getMessage());
}
?>