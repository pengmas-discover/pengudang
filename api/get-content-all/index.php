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

if(isset($_GET['pengudang'])) {
    $sql = "SELECT * FROM tosee_content JOIN tosee_description ON tosee_content.tosee_id = tosee_description.tosee_id WHERE tosee_content.tosee_id = 1 || tosee_content.tosee_id = 4 || tosee_content.tosee_id = 5 || tosee_content.tosee_id = 21 || tosee_content.tosee_id = 22 || tosee_content.tosee_id = 24 || tosee_content.tosee_id = 46 || tosee_content.tosee_id = 47";
} else {
    $sql = "SELECT * FROM tosee_content JOIN tosee_description ON tosee_content.tosee_id = tosee_description.tosee_id WHERE tosee_content.thumbnail <> '' ";
}


$result = $conn->query($sql);

if ($result) {
    $response = array();
    while ($row = $result->fetch_assoc()) {
        $tosee_id = $row['tosee_id'];

        $imgSql = "SELECT images FROM tosee_images WHERE tosee_id = '$tosee_id'";
        $imgResult = $conn->query($imgSql);

        $images = array();
        while ($imgRow = $imgResult->fetch_assoc()) {
            $images[] = $imgRow['images'];
        }
        
        $row['images'] = $images;
        $response[] = $row;
    }
    
    header('Content-Type: application/json');
    echo json_encode($response);
} else {
    header('Content-Type: application/json');
    echo json_encode(array("message" => "No data found."));
}


// Close the database connection
$conn->close();
?>