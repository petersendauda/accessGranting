<?php
include('include/dbconn.php');
session_start();

if (isset($_SESSION['role'])) {
    if ($_SESSION['role'] != 'User') {
        header("Location: admin.php");
    }
}// else {
//     header("Location: index.php");
// }

?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LifeBlood</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>

<body>
    <h2 align="center">ATTENDANCE</h2>

    <table class="table table-dark">
        <thead>
            <tr>
                <th scope="col">Employee #</th>
                <th scope="col">DEPARTMENT</th>
                <th scope="col">First Name</th>
                <th scope="col">Last Name</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
            <tr>
            <td>1</td>
                <td>Commerce</td>
                <td>John</td>
                <td>Kamara</td>
                    <td>
                        <button type="button" name="present" class="btn btn-primary"><a
                                href="#?empno=<?php echo $row['empno']; ?>" class="text-light">Time
                                In</a></button>
                        <button type="button" class="btn btn-primary"><a
                                href="#?empno=<?php echo $row['empno']; ?>"
                                class="text-light">Timeout</a></button>
                        <button type="button" class="btn btn-danger"><a href="#?empno=<?php echo $row['empno']; ?>"
                                class="text-light">Absent</a></button>
                    </td>
                </tr>
        </tbody>
    </table>
    <!-- table -->

</body>

</html>