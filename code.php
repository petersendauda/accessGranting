<?php
session_start();
require_once "include/dbconn.php";
$message = "";
$role = "";
if (isset($_POST['submit'])) {
    $email = $_POST['email'];
    $staffpassword = $_POST['staffpassword'];
    $username = $_POST['username'];

    $query = "SELECT * FROM staff_login WHERE email= '$email' AND staffpassword= '$staffpassword'";
    $result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
           if ($row['role'] == "Admin") {
           $_SESSION['id'] = $row['id'];
           header("Location: admin.php");
           }else {
            $_SESSION['id'] = $row['id'];
            header("Location: user.php");
           }
        }
    }else {
        header("Location: index.php");
    }
}
?> 