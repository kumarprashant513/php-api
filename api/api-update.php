<?php

header('Content-type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Method: POST');
header('Access-Control-Allow-Header: token, Access-Control-Allow-Header, Content-type, Access-Control-Allow-Method, Authorization, X-Requested-With');


include("connection.php");



$data = json_decode(file_get_contents("php://input"), true);

$id = $data['id'];
$name = $data['name'];
$age = $data['age'];
$city = $data['city'];



$sql = "UPDATE myinfo SET id='$id', name ='$name', age='$age', city='$city' WHERE id = {$id}";


if ($result = mysqli_query($conn, $sql)) {
    echo json_encode(array('message' => 'actors record updated.', 'status' => true));
} else {
    echo json_encode(array('message' => 'actors record not updated.', 'status' => false));
}
