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
<title>Login</title>
    <link rel="stylesheet" type="text/css" href="css/stylelogin.css" media="screen" />
</head>
<body>
<div class="container">
	<section id="content">
		<?php
		if($_SERVER['REQUEST_METHOD'] == 'POST'){
		  $username = $fm-> validation($_POST['username']);
		  $password = $fm-> validation(MD5($_POST['password']));

		  $username = mysqli_real_escape_string($db->link, $username);
		  $password = mysqli_real_escape_string($db->link, $password);

		  
		  $query = "SELECT * FROM tbl_user WHERE username = '$username' AND password = '$password' ";
		  $result = $db->select($query);


		  if ($result != false) {
		  	  //$value = mysqli_fetch_array($result);
		  	    $value =$result->fetch_assoc() ;
             
		  	  	session::set("login", true);
		  	  	session::set("username", $value['username']);
		  	  	session::set("userId", $value['id']);
		  	  	session::set("userRole", $value['role']);

		  	  	header("Location:index.php");
		  	  
		  }else{
		  	echo "<span style='color:red;font-size:18px';>username or password not matched..!!!</span>";
		  }
		}

		?>

		<form action="login.php", method="POST">
			<h1>Admin Login</h1>
			<div>
				<input type="text" placeholder="Username" required="" name="username"/>
			</div>
			<div>
				<input type="password" placeholder="Password" required="" name="password"/>
			</div>
			<div>
				<input type="submit" value="Log in" />
			</div>
		</form><!-- form -->
		<div class="button">
			<a href="forgetpass.php">Forget password!</a>
		</div><!-- button -->
		<div class="button">
			<a href="#">Training with live project</a>
		</div>
	</section><!-- content -->
</div><!-- container -->
</body>
</html>