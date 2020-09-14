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
                if (!isset($_GET['deletepostid'])||$_GET['deletepostid']==NULL) {
                    //header("Location:postlist.php");
                    //in javascript
                    echo "<script>window.location='postlist.php';</script>";
                }else{
                    $postid = $_GET['deletepostid'];
                    $query = "select * from tbl_post where id ='$postid'";
                    $getData = $db->select($query);
                    if ($getData) {
                    	while ($delimg = $getData->fetch_assoc()) {
                    		$dellink = $delimg['image'];
                    		unlink($dellink);
                    	}
                    }

                    $delquery = "delete from tbl_post where id = '$postid'";
                    $delData = $db->delete($delquery);
                    if ($delData) {
                    	echo "<script>('Data Deleted Successfully.');</script>";
                    	echo "<script>window.location='postlist.php';</script>";
                    }else{
                    	echo "<script>('Data Not Deleted.');<script>";
                    	echo "<script>window.location='postlist.php';</script>";
                    }
                }
                ?>

  