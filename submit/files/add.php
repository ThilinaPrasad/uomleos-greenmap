<?php
include_once 'crud.php';
$crud = new Crud();
$name = $_POST['pname'];
$desc = $_POST['pdesc'];
$year= $_POST['pyear'];
    $address = $_POST['paddress'];
    $lat = $_POST['plat'];
    $lon = $_POST['plon'];


$addQuery = "INSERT INTO green_map (name,description,year,address,lat,lon) VALUES ('{$name}','{$desc}','{$year}','{$address}','{$lat}','{$lon}')";
            if ($crud->execute($addQuery)){
                echo "sucess";
            }else{
                echo "error";
            }

            ?>
