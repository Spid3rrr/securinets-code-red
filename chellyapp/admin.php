<?php

session_start();
if ($_SESSION["thisUser"] != 1){
    header("Location: login.php");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>admin page</title>
</head>
<body>
    <h1>Welcome admin</h1>
    <a href="logout.php">Logout</a>
</body>
</html>