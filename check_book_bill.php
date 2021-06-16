<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <title>Document</title>


    <!-- Bootstrap CSS -->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <!--Google Font CSS-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat|Roboto:300,400" rel="stylesheet">
    <!--Custom CSS-->
    <link rel="stylesheet" href="assets/css/new_style.css">





</head>
<body>
   <div class="container">
    <?php

include('connection.php');

session_start();

$customer_id = $_SESSION['id'];
?>
    <h1>User Booking and Bill Details</h1>
    <style>
        table {
            border-collapse: collapse;
        }

        table,
        th,
        td {
            border: 1px solid black;
        }

    </style>
    <table class="table table-striped table-dark">
        <tr>
            <th>Place Name</th>
            <th>Hotel Name</th>
            <th>Transport Name</th>
            <th>Transport Seat</th>
            <th>Hotel Room</th>
        </tr>
        <?php
                $sql = "SELECT place_name,hotel_name,trans_name,need_trans_seat,need_room FROM booking WHERE cust_id = '$customer_id'";
                $result = $conn->query($sql);
                if($result->num_rows>0)
                {
                    while($row = $result->fetch_assoc())
                    {
            ?>
        <tr>
            <td><?php echo $row['place_name']; ?></td>
            <td><?php echo $row['hotel_name']; ?></td>
            <td><?php echo $row['trans_name']; ?></td>
            <td><?php echo $row['need_trans_seat']; ?></td>
            <td><?php echo $row['need_room']; ?></td>
        </tr>
        <?php } }
        else
        {
            echo "there is not any booking or bill<br>";
        }?>
    </table>

<br><br>

    <style>
        table {
            border-collapse: collapse;
        }

        table,
        th,
        td {
            border: 1px solid black;
        }

    </style>
    <table class="table table-striped table-dark">
        <tr>
            <th>Total Room Cost</th>
            <th>Need Room</th>
            <th>Transport Seat</th>
            <th>Total Transport Fare</th>
            <th>Total Bill(=)</th>
        </tr>
        <?php
                $sql = "SELECT tot_room_cost,need_room,need_trans_seat,tot_trans_fare,tot_bill FROM customer_bill WHERE cust_id = '$customer_id'";
                $result = $conn->query($sql);
                if($result->num_rows>0)
                {
                    while($row = $result->fetch_assoc())
                    {
            ?>
        <tr>
            <td><?php echo $row['tot_room_cost']; ?></td>
            <td><?php echo $row['need_room']; ?></td>
            <td><?php echo $row['need_trans_seat']; ?></td>
            <td><?php echo $row['tot_trans_fare']; ?></td>
            <td><?php echo $row['tot_bill']; ?></td>
        </tr>
        <?php } }
        else
        {
            echo "there is not any booking or bill<br>";
        }?>
    </table>
</div>
</body>

</html>
