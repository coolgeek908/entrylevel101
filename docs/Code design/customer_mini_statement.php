<?php 
session_start();
        
if(!isset($_SESSION['customer_login'])) 
    header('location:index.php');   
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Mini Statement</title>
        
        <link rel="stylesheet" href="newcss.css">
        <style>
            .content_customer table,th,td {
    padding:6px;
    border: 1px solid #2E4372;
   border-collapse: collapse;
   text-align: center;
}

        </style>
    </head>
        <?php include 'header1.php' ?>
<div class='content_customer'>
           <?php include 'customer_navbar.php'?>
    
<?php    include '_inc/dbconn.php';
$sender_id=$_SESSION["login_id"];
$sql="SELECT * FROM passbook".$sender_id." LIMIT 10";
$result=  mysql_query($sql) or die(mysql_error()); ?>

    <br><br><br>
    <h3 style="text-align:center;color:#2E4372;"><u>Last 10 Transaction</u></h3>
    <table align="center">
                        
                        <th>No.</th>
                        <th>Transaction Date</th>
                        <th>Account Type</th>
						<th>Deposit</th>
						<th>Withdraw</th>
                        <th>Balance Amount</th>
						<th>Narration</th>
                        
                        <?php
                        while($rws=  mysql_fetch_array($result)){
                            
                            echo "<tr>";
                            echo "<td>".$rws[0]."</td>";
                            echo "<td>".$rws[1]."</td>";
                            echo "<td>".$rws[4]."</td>";
							echo "<td>".$rws[5]."</td>";
							echo "<td>".$rws[6]."</td>";
                            echo "<td>".$rws[7]."</td>";
							echo "<td>".$rws[8]."</td>";
                           
                            echo "</tr>";
                        } ?>
</table>
    </div>
        <?php include 'footer.php'?>