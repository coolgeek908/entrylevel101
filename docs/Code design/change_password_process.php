<?php 
session_start();
        
if(!isset($_SESSION['adminlogin'])) 
    header('location:adminlogin.php');   
?>
<?php
            if(isset($_REQUEST['change_password'])){
				    include '_inc/dbconn.php';
            $sql="SELECT * FROM admin WHERE id='1'";
            $result=mysql_query($sql);
            $rws=  mysql_fetch_array($result);
            $old=  mysql_real_escape_string($_REQUEST['old_password']);
            $new=  mysql_real_escape_string($_REQUEST['new_password']);
            $again=  mysql_real_escape_string($_REQUEST['again_password']);
            if($rws[9]==$old && $new==$again){
                $sql1="UPDATE admin SET pwd='$new' WHERE id='1'";
                mysql_query($sql1) or die(mysql_error());
                header('location:admin_hompage.php');
				echo '<script>alert("Change Password Success!");';
				echo 'window.location= "change_password.php";</script>';
			}
            else{
				header('location:change_password.php'); 
				echo '<script>alert("Change Password Unsuccessful!");';
				echo 'window.location= "change_password.php";</script>';				
            }
            }
          