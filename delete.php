<?php 
require_once("connection.php"); //this will bring the connection in our dbconnection so we don't have to the connection again
$conn=connect();
    $id = $_GET['id']; //the id of the line that user wants to delete
    $sqlDeleteStatetment = "DELETE FROM rentedcars WHERE rentedcars.id = '$id';";
    if(mysqli_query($conn, $sqlDeleteStatetment)){
        //if the delete is successfull all the tags of this task will be deleted as well.abstrac
            $Message = urlencode("Record Deleted!");
            header("Location:clientview.php? Message=".$Message);      
    }else{
        echo "error";
    }
?>