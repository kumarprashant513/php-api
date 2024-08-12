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


$sql = "INSERT INTO myinfo (id, name, age, city) VALUES ('$id', '$name', '$age', '$city')";


if ($result = mysqli_query($conn, $sql)) {
    echo json_encode(array('message' => 'actors record inserted.', 'status' => true));
} else {
    echo json_encode(array('message' => 'actors record not inserted.', 'status' => false));
}
