<?php
    $conn = mysqli_connect("db","root","root","bluehealth") or die("Connection Error");
    if($conn){
        $email = $_POST["email"];
        $pwd = $_POST["pwd"];
        
        $res1 = mysqli_query($conn,"Select password from patient where email = '$email'");
        if(mysqli_num_rows($res1) == 0){
            echo("Account Not Found");
        }
        else{
            $account = mysqli_fetch_array($res1);
            if(password_verify($pwd,$account["password"])){
                echo("Login Successfully");
            }
            else{
                echo("Wrong Password");
            }
        }
    }
    


?>