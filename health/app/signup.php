<?php
    $conn = mysqli_connect("db","root","root","bluehealth") or die("Connection Error");
    if($conn){
        $name = $_POST["name"];
        $therapy = $_POST["therapy"];
        $email = $_POST["email"];
        $age = $_POST["age"];
        $gender = $_POST["gender"];
        $pwd = crypt($_POST["pwd"],"PASSWORD_Default");
        

        $req1 = "Select * from patient where email = '$email'";
        $res1 = mysqli_query($conn,$req1);
        if (mysqli_num_rows($res1) != 0) {
            echo("Email Already Used");
        }
        else{
            

            $req3 ="Insert into patient values (0,'$name',$age,'$gender','$therapy','$email','$pwd')";
            $res3 = mysqli_query($conn,$req3);
            if($res3){
                echo("User Registred Successfully");
            }
            else{
                echo("Registration Error");
            }
        }
    }
?>