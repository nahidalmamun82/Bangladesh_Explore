<?php 
include "../lib/session.php"; 
session::checkLogin();
?>
<?php include "../config/config.php"; ?>
<?php include "../lib/Database.php"; ?>
<?php include "../helpers/Format.php";?>

    <?php
		$db = new Database();
		$fm = new Format();

	?>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>Password Recovery</title>
    <link rel="stylesheet" type="text/css" href="css/stylelogin.css" media="screen" />
</head>
<body>
<div class="container">
	<section id="content">
		<?php
		if($_SERVER['REQUEST_METHOD'] == 'POST'){
		  $email = $fm-> validation($_POST['email']);
		  
		  $email = mysqli_real_escape_string($db->link, $email);

		  if(!filter_var($email , FILTER_VALIDATE_EMAIL)){
		  	  echo "<span style='color:red;font-size:18px';>Invalid Email Address.!!!</span>";
		  }else{
            $mailquery = "select * from  tbl_user where email='$email' limit 1";
            $mailcheck = $db->select($mailquery);
           if ($mailcheck != false) {
           	while ($value=$mailcheck->fetch_assoc()) {
           		$userid = $value['id'];
           		$username = $value['username'];
           		

           	}

           	$text        = substr($email, 0, 3);
           	$rand        = rand(10000, 99999);
           	$newpass     = "$text$rand";
           	$password    = md5($newpass);

           	$updatequery = "update tbl_user
              set password = '$password'
              where id = '$userid'";
            $updated_row = $db->update($updatequery);

                $to        = "$email";
           		//$from      = "project@gmail.com";
           		//$header[]  = "From: $from\n";
           		$headers[] = 'From: Project <project@gmail.com>';
           		$headers[] = 'MIME-Version: 1.0';
                $headers[] = 'Content-type: text/html; charset=iso-8859-1';
                $subject    = "Your Password";
                $message   = "Your username is ".$username." and password is ".$newpass." please visit website.";

           		$sendmail = mail($to, $subject, $message, implode("\r\n", $headers));

                if ($sendmail) {
           		 echo "<span style='color:green;font-size:18px';>Please check your email for new password.!!!</span>";
           		    } else{
           		    	echo "<span style='color:red;font-size:18px';>Email Not Sent..!!!</span>";
           		    }		
 	  
		  }else{
		  	echo "<span style='color:red;font-size:18px';>Email Not Exist..!!!</span>";
		  }
		}
	  }	
	?>

		<form action="", method="POST">
			<h1>Password Recovery</h1>
			<div>
				<input type="text" placeholder="Enter Valid Email." required="" name="email"/>
			</div>
			
			<div>
				<input type="submit" value="Send Mail" />
			</div>
		</form><!-- form -->
		<div class="button">
			<a href="login.php">Log In!</a>
		</div><!-- button -->
		<div class="button">
			<a href="#">Training with live project</a>
		</div>
	</section><!-- content -->
</div><!-- container -->
</body>
</html>