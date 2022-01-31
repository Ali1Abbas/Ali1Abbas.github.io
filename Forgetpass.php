<!DOCTYPE html>

<html>
<head>
<script type="text/javascript" src="assets/ajs/angular.min.js"> </script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="shortcut icon" type="image/png" href="assets/img/P.png">
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/w3css/w3.css">
  <script type="text/javascript" src="assets/js/jquery.min.js"></script>
  <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>  
  <script type="text/javascript" src="assets/js/custom.js"></script> 
  </head>
<!-- In the body we created a form and inputs for the user to send the data to database-->

<body>

<nav class="navbar navbar-custom navbar-fixed-top" role="navigation" style="color: black">
<div class="collapse navbar-collapse navbar-right navbar-main-collapse">
            
            <ul class="nav navbar-nav">
           
                <li>
                    <a href="index.php">Home</a>
                </li>
                <li>
                                <a href="clientlogin.php">Admin</a>
                            </li>
                <li>
                    <a href="customerlogin.php">Customer</a>
                </li>
                <li>
                    <a href="faq/index1.php"> FAQ </a>
                </li>
                <li>
                                <a href="about.php"> Contact Us </a>
                            </li>
            </ul>
        </div>
</nav>
      <div class="container"> 
        <div class="row">
          
          <div class="col-md-9 pt-5 mt-5">

        <form name="forgot" method="post" action="<?php $_SERVER['PHP_SELF'];?>"> 
            <h2 class="text-center font-weight-bold" id="tl"> Forgot Password?</h2>
                    <div class="login-form">
                <div class="sign-in-htm">
                    <div class="group">
                        <label for="user" class="label">Your Email Address</label>
                        <input id="user" type="email" name="email" class="input mb-3" placeholder="Email">

                        <button name="submit" class="btn btn-primary"> Submit</button>

                        <!--<input type="submit" name="submit" class="pb-2 mb-3" value="submit">-->
                        <a href="login.php" class="btn btn-success" >Login</a>
            </div>
        
      </div>
    </div>
				      						
</form> 
          </div>
         <div class="col-md-3"></div>
      </div>
</div>
</body>
</html>

<!-- http://talkerscode.com/webtricks/ajax-login-form-using-jquery-php-and-mysql.php -->


<?php 
if(isset($_POST['submit'])) 
{ 

require_once("connection.php");
$conn = Connect();
$email = $_POST['email']; 
$sql= "SELECT customer_password FROM customers WHERE customer_email ='$email'"; 
$query = mysqli_query($conn, $sql); 

if($row=mysqli_fetch_assoc($query)) 
    { 
//$row=mysqli_fetch_array($query); 
$password=$row['customer_password'];
$email=$_POST["email"];
$subject="iRental - Password Request"; 
$header= 'From: irental.krd@gmail.com'; 
$content="Your password is ".$password; 
mail($email, $subject, $content, $header);

echo '<script>
 
  alert("An email containing the password has been sent to you");

</script>'; 
    } 

else  

    { 
  echo'<script>
 
  alert("no such login in the system. please try again");

</script>'; 
    } 
} 
?>