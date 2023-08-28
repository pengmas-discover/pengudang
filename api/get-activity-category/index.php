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

$sql = "SELECT * FROM `tosee_content` JOIN `tosee_description` ON `tosee_content`.`tosee_id` = `tosee_description`.`tosee_id` JOIN `todo_categories` ON `tosee_content`.`categories_id` = `todo_categories`.`categories_id`  WHERE `tosee_content`.`categories_id` <> '' ORDER BY `tosee_content`.`categories_id` ASC";

if(isset($_GET['category'])) {
    $category = $_GET['category'];
    
    if($category != "3" && $category != "4" && $category != "7") {
        $sql = "SELECT * FROM `tosee_content` JOIN `tosee_description` ON `tosee_content`.`tosee_id` = `tosee_description`.`tosee_id` JOIN `todo_categories` ON `tosee_content`.`categories_id` = `todo_categories`.`categories_id` WHERE `tosee_content`.`categories_id` = '$category'";
    } else {
        $sql = "SELECT * FROM todo_categories WHERE categories_id = '$category' ";
    }
}

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $response = array();
    while ($row = $result->fetch_assoc()) {
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