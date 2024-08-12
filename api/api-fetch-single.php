<?php

header('Content-type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Method: Get');
header('Access-Control-Allow-Header: token, Content-type');


include ("connection.php");



$data = json_decode(file_get_contents("php://input"), true);


// $name = $data['name'];
// $age = $data['age'];
// $city = $data['city'];


$id = $data['sid'];

$sql = "SELECT * FROM myinfo WHERE id = {$id}";

if($result = mysqli_query($conn, $sql)){
    if(mysqli_num_rows($result) > 0){
        if($output = mysqli_fetch_all($result, MYSQLI_ASSOC)){
           echo json_encode($output, JSON_PRETTY_PRINT);
        }else{
            echo json_encode(array('message'=>'no record found.', 'status'=> false));
        }
    }
}