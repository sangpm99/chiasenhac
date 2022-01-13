<?php
    $conn = mysqli_connect(HOST,USER,PASS,DB,PORT); // luu vao bien conn
    if(!$conn){
        die("Không thể kết nối : ".mysqli_connect_error());
    }
?>