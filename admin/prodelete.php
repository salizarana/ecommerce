<?php
include('../partials/connect.php');

$newid=$_GET['del_id'];

$sql="Delete from products where id='$newid'";

if(mysqli_query($connect, $sql)){
    header('Location: productsshow.php');
}else{
    echo "Not deleted";
}

?>