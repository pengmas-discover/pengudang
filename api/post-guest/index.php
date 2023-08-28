<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST");
header("Access-Control-Allow-Headers: Content-Type");

$host = 'localhost';
$database = 'devpengu_db_pengudang';
$username = 'root';
$password = '';

$conn = new mysqli($host, $username, $password, $database);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$dataPost = $_POST;
$response = array();

if(isset($dataPost['guest_name'])) {
    $sql = "INSERT INTO `user_guest`(`guest_name`) VALUES ('" . $dataPost['guest_name'] . "') ";

    if (mysqli_query($conn, $sql)) {
        $response['status'] = 'success';
        $response['message'] = 'Data successfully saved.';
    } else {
        $response['status'] = 'error';
        $response['message'] = 'Failed to save data: ' . mysqli_error($conn);
    }
} else {
    $response['status'] = 'error';
    $response['message'] = 'Incomplete data.';
}

header('Content-Type: application/json');
echo json_encode($response);

// Close the database connection
$conn->close();
?>