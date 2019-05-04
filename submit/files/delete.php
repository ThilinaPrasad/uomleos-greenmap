<?php
include_once 'crud.php';
$crud = new Crud();
$id = $_POST['id'];

$deleteQuery = "DELETE FROM green_map WHERE green_map.id='". $id."'";
            if ($crud->execute($deleteQuery)){
                echo "sucess";
            }else{
                echo "error";
            }

            ?>
