<?php 
$host = 'db'; // service name from docker-compose.yml 
$user = 'root'; 
$password = '1234'; 
$db = 'bace'; 
$conn = new mysqli($host, $user, $password, $db); 
if($conn -> connect_error) { 
    echo 'connection failed' . $conn -> connect_error; 
} 
else {
    echo 'Sucessfully connected to MYSQL'; 
}
?>