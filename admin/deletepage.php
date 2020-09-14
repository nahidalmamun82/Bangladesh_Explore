<?php 
include "../lib/session.php"; 
session::checkSession();
?>

<?php include "../config/config.php"; ?>
<?php include "../lib/Database.php"; ?>
<?php include "../helpers/Format.php";?>

<?php
  $db = new Database();
  
?>
 <?php
                if (!isset($_GET['delpage'])||$_GET['delpage']==NULL) {
                    //header("Location:postlist.php");
                    //in javascript
                    echo "<script>window.location='index.php';</script>";
                }else{
                    $pageid = $_GET['delpage'];
                    
                    $delquery = "delete from tbl_page where id = '$pageid'";
                    $delData = $db->delete($delquery);
                    if ($delData) {
                    	echo "<script>('page Deleted Successfully.');</script>";
                    	echo "<script>window.location='index.php';</script>";
                    }else{
                    	echo "<script>('page Not Deleted.');<script>";
                    	echo "<script>window.location='index.php';</script>";
                    }
                }
                ?>

  