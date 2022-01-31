<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Contact Us</title>
    <link rel="shortcut icon" type="image/png" href="assets/img/P.png">
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='contacttccss.css'>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/contact.css"> 
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/w3css/w3.css">
  <script type="text/javascript" src="assets/js/jquery.min.js"></script>
  <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>  
  <script type="text/javascript" src="assets/js/custom.js"></script> 
   <style>

*{

margin:0%;
padding: 0%;
align-items: center;
background: #fff;
font-family: 'Poppins', sans-serif;
}

body{

width: 100%;
height: 100vh;
display: grid;
align-items: center;
background: #a9a9a9;


}

.Contact-section{
width: 80%;
height: auto;
margin: auto;
display: flex;
flex-wrap: wrap;
padding: 10px;
border-radius: 10px;
background: #fff;
box-shadow: 0px 0px 10px 0px #666;
}

.map{

width: 90%;
height: auto;
flex: 50%;
}

.form{

width:90%;
height: auto;
flex: 50%;
}

.form h1{
margin-bottom: 10px;
font: bold;
}

.contact{
width: 90%;
height: 20px;
color: #000;
border: 1px solid #bcbcbc;
border-radius: 50px;
outline: none;
margin-bottom: 20px;
padding: 15px;

}

.contact::placeholder{

    color: #aaa;
}

.contact-txt{
width: 90%;
height: 120px;
color: #000;
border: 1px solid #bcbcbc;
border-radius: 15px;
outline: none;
margin-bottom: 20px;
padding: 15px;

}

.contact-submit{
width: 100%;
border: none;
outline: none;
border-radius: 50px;
background:#a9a9a9 ;
color: #fff;
text-transform:uppercase ;
padding: 10px 0px;
cursor: pointer;
font-size: 18px;

}
.contact-txt ::placeholder{

    color:#000;

}





   </style>
</head>
<body>
<?php 
session_start(); 
require 'connection.php';
$conn = Connect();
?>
    <script>

        function warring(){
alert("Thanks for Contact us");
        }
    </script>

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


    <div class="Contact-section" >
    
        <div class="map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d103859.82458787413!2d45.30761429629662!3d35.563097895720844!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40002c0536d143b1%3A0xf791750d4e215dea!2sSulaymaniyah!5e0!3m2!1sen!2siq!4v1621704713723!5m2!1sen!2siq" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>

        </div>
        <div class="form">
            <h1>
                Contact us
            </h1>
        

        <form class="Contact-form" action="action_page.php" method="POST">
        
        <input type="text" class="contact" placeholder="name" required name="name">
        <input type="email" class="contact" placeholder="Email" required name= e_mail>
        <textarea required name="message" id="" cols="30" rows="10" class="contact-txt" placeholder="Write message"></textarea>
        <input type="submit" class="contact-submit" placeholder="" value="Send" onclick="warring()">
        
    </form>
    </div>
</div>
<footer class="site-footer">
        <div class="container">
        
            <hr>
            <div class="row">

                <div class="col-sm-6">
                    <h5>© 2022 i Rental</h5>
                </div>
               
            </div>
        </div>
    </footer>
</body>


</html>

