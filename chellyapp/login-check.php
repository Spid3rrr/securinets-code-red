<?php

session_start();
use function PHPSTORM_META\type;

$message ="";
include "connection.php";
if (!$conn) { 
    die("Connection Failed"); 
}

$typedEmail = $_POST["userEmail"];
$typedPassword = $_POST["password"];

// Introduce SQL injection vulnerability here
$query = 'SELECT * FROM users WHERE userEmail = \'' . $typedEmail . '\' AND password = \'' . $typedPassword . '\';';

$result = $conn -> query($query);
$rows = [] ;
$userFound= false;

while ($row = $result->fetch_assoc()) { 
    array_push($rows,$row);
    if ($row["password"] == $typedPassword &&  (strtolower($row["userEmail"]) == strtolower($typedEmail))){
        $_SESSION["thisUser"] = $row["userId"];
        $userFound = true ;
        $_SESSION["message"] = null;
        if ($row["userId"] != 1){
            header("Location: loggedin.php");
        } else {
            header("Location: admin.php");
        }
    }
 } 

if (!$userFound) {
    $_SESSION["message"] ="Invalid login";
    header("Location: login.php");
}
?>


