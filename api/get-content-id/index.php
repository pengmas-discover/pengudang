<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST");
header("Access-Control-Allow-Headers: Content-Type");

$host = 'localhost';
$database = 'devpengu_db_pengudang';
$username = 'root';
$password = '';

// Create a new database connection
$conn = new mysqli($host, $username, $password, $database);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$dbcontent = $_GET['get'];
$id = $_GET['id'];

if ($dbcontent == 'content') {
    $sql = "SELECT * FROM tosee_content 
            JOIN tosee_description ON tosee_content.tosee_id = tosee_description.tosee_id 
            WHERE tosee_content.tosee_id = '$id'";

    $img = "SELECT images FROM tosee_images WHERE tosee_id = '$id'";

    $result = $conn->query($sql);
    $res = $conn->query($img);

    if ($result->num_rows > 0) {
        $response = array();
        while ($row = $result->fetch_assoc()) {
            $response['content'] = $row;

            $images = array();
            while ($rows = $res->fetch_assoc()) {
                $images[] = $rows;
            }
            $response['content']['images'] = $images;
        }
        header('Content-Type: application/json');
        echo json_encode($response);
    } else {
        header('Content-Type: application/json');
        echo json_encode(array("message" => "No data found."));
    }
}




// Close the database connection
$conn->close();
?>