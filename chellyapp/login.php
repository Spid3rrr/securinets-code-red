<?php
session_start();
if (!array_key_exists("message", $_SESSION)) {
    $_SESSION["message"] = "";
} else if ($_SESSION["message"] == "Invalid login") {
    ?>
    <div class="alert alert-danger" role="alert">
        <?php echo "Invalid email or password. If you believe there was a mistake, please contact an admin.";
        $_SESSION["message"] = "";
        ?>
    </div> <?php
}
?>

<html>

<head>
    <title>User Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="assets/icon.png">
</head>

<body class="login-body">



<div class="main-login-box">
    <h1>Log in</h1>
    <p>
        There are two protected pages in this website.<br>
        The first one is the admin page. (admin.php)<br>
        The second one is the user page. (loggedin.php)<br>
    </p>
    <form action="login-check.php" method="post">
        <label for="userEmail">User Email:</label>
        <input type="text" id="userEmail" name="userEmail"><br><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password"><br><br>
        <input type="submit" class="btn btn-primary" value="Submit">
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>


</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

<div class="login-footer">
    <span><small><i>This web app is made with ♥ by Ahmed Chelly for the securinets hackathon </i></small> </span>
</div>
</body>

</html>
