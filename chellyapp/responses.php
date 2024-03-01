<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Responses</title>
    <link rel="icon" href="assets/icon.png">
</head>

<body>

<?php
include "connection.php";
include "navbar.php";
if ($_SESSION["thisUser"] != 1) {
    $_SESSION["thisUser"] = null;
    header("Location: login.php");
} else { ?>
<div id="fullPage">
    <?php
    $thisUser = $_SESSION["thisUser"];
    $eventId = $_GET["eventId"];
    $query = "SELECT * FROM events where eventId = ?";
    $event = $conn->prepare($query) or die($conn->error);
    $event->bind_param("i", $eventId);
    $event->execute();
    $event = $event->get_result();
    $event = mysqli_fetch_assoc($event);
    echo "Event: " . $event["eventName"] . "<br>";
    $query = "SELECT * FROM response where eventId = ? and responseState = 1";
    $in = $conn->prepare($query) or die($conn->error);
    $in->bind_param("i", $eventId);
    $in->execute();
    $in = $in->get_result();
    $query = "SELECT * FROM response where eventId = ? and responseState = 0";
    $out = $conn->prepare($query) or die($conn->error);
    $out->bind_param("i", $eventId);
    $out->execute();
    $out = $out->get_result();
    echo "The <strong>total</strong> number of users who responded to this event is: <strong>", (mysqli_num_rows($in) + mysqli_num_rows($out)), "</strong><br>";
    echo "The number of users who responded <strong>going</strong> to this event is: <strong>", mysqli_num_rows($in), "</strong><br>";
    echo "The number of users who responded <strong>NOT going</strong> to this event is: <strong>", mysqli_num_rows($out), "</strong><br>";

    if (mysqli_num_rows($in) > 0) {
        echo "******Those who responded going:******<br>";
        while ($inRow = $in->fetch_assoc()) {
            $userId = $inRow["userId"];
            $query = "SELECT * from users where userId = $userId";
            $result = $conn->query($query);
            $user = $result->fetch_assoc();
            echo($user["userName"] . " " . $user["userEmail"] . "<br>");
        }
    }

    if (mysqli_num_rows($out) > 0) {
        echo "******Those who responded NOT going:******<br>";
        while ($outRow = $out->fetch_assoc()) {
            $userId = $outRow["userId"];
            $query = "SELECT * from users where userId = $userId";
            $result = $conn->query($query);
            $user = $result->fetch_assoc();
            echo("<strong>" . $user["userName"] . ":</strong> " . $user["userEmail"] . ", his justification is: <br>");
            echo("<p>" . $outRow["responseJustification"] . "</p>");
        }
    }
    } ?>
</div>
<!--    //Download file as pdf-->
<script src="https://raw.githack.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js">
</script>
<script src="script.js"></script>
<button onclick="generatePDF()" class="btn btn-primary">Download</button>

</body>

</html>