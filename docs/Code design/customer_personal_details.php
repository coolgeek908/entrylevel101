<?php 
session_start();
        
if(!isset($_SESSION['customer_login'])) 
    header('location:index.php');   
?>
<?php
                $cust_id=$_SESSION['cust_id'];
                include '_inc/dbconn.php';
                $sql="SELECT * FROM customer WHERE email='$cust_id'";
                $result=  mysql_query($sql) or die(mysql_error());
                $rws=  mysql_fetch_array($result);
                
                
                $name= $rws[1];
                $account_no= $rws[0];
                $dob=$rws[3];
                $nominee=$rws[4];
                $branch=$rws[10];
                
                $gender=$rws[2];
                $mobile=$rws[7];
                $email=$rws[8];
                $address=$rws[6];
                
                $last_login= $rws[11];

                $acc_type=$rws[5];
                               
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Personal Details</title>
        
        <link rel="stylesheet" href="newcss.css">
    </head>
        <?php include 'header1.php' ?>
        <div class='content_customer'>  
           <?php include 'customer_navbar.php'?>
		   

            <h3 style="text-align:center;color:#2E4372;"><u>Personal Details</u></h3>
			
            
            
            <p><center><span class="heading">Name: </span><?php echo $name;?></p>
            <p><span class="heading">Gender: </span><?php if($gender=='M') echo "Male"; else echo "Female";?></p>
            <p><span class="heading">Mobile: </span><?php echo $mobile;?></p>
            <p><span class="heading">Email: </span><?php echo $email;?></p>
            <p><span class="heading">Address: </span><?php echo $address;?></p>
            
            <p><span class="heading">Account No: </span><?php echo $account_no;?></p>
            <p><span class="heading">Nominee: </span><?php echo $nominee;?></p>
            <p><span class="heading">Branch: </span><?php echo $branch;?></p>
            
            <p><span class="heading">Account Type: </span><?php echo $acc_type;?></p>
			<p><span class="heading">Last Login Time: </span><?php echo $last_login;?></p>
          
            </div>
 
               <?php include 'footer.php';?>
            
    </body>
</html>