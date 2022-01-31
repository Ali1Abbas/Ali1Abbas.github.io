<?php

include "connection.php";
$conn=connect();
if(isset($_POST["search"]))
{
 $search = mysqli_real_escape_string($conn, $_POST["search"]);
 $query = "
  SELECT * FROM rentedcars,cars 
  WHERE car_name LIKE '%".$search."%'
   OR customer_username LIKE '%".$search."%' 
  
 ";
}
else
{
 $query = "
  SELECT * FROM entedcars,cars ORDER BY user_id
 ";
}
$result = mysqli_query($conn, $query);






?>