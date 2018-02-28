<?php 
session_start();
include '_inc/dbconn.php';
        
if(!isset($_SESSION['admin_login'])) 
    header('location:adminlogin.php');   
?>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Change Password</title>
        
        <link rel="stylesheet" href="newcss.css">
    </head>
        <?php include 'header1.php' ?>
		
        <div class='content'>
           <?php include 'admin_navbar.php'?>
		   <h3 style="text-align: center;color:#2E4372;"><u>Change Password</u></h3>
            <div class='admin_change_pwd'>
			<center>
			    <?php
			include '_inc/dbconn.php';
			$sql="SELECT * FROM admin WHERE id='1'";
			$result=mysql_query($sql);
?>
            <form action="change_password_process.php" method="POST" align="center">
                <table align="center">
                    <tr>
                        <td>Enter old password</td>
                        <td><input type="password" name="old_password" required=""/></td>
                    </tr>
                    <tr>
                        <td>Enter new password</td>
                        <td><input type="password" name="new_password" required=""/></td>
                    </tr>
                    <tr>
                        <td>Enter password again</td>
                        <td><input type="password" name="again_password" required=""/></td>
                    </tr>
                    <tr>
                        
                        <td colspan="2" align='center' style='padding-top:20px'><input type="submit" name="change_password" value="Change Password" class="addstaff_button"/></td>
                    </tr>
                </table>
            </form>
			</center>
                </div>
            </div>

            <?php include 'footer.php';?>
	
		
</html>