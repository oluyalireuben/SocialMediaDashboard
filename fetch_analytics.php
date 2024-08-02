<?php
session_start();
header('Content-Type: application/json');

// Database connection
$conn = new mysqli('localhost', 'root', '', 'social_media_dashboard');

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch analytics data
$user_id = $_SESSION['user_id'];
$result = $conn->query("SELECT data, created_at FROM analytics WHERE user_id = $user_id ORDER BY created_at DESC");

$analytics = [];
while ($row = $result->fetch_assoc()) {
    $analytics[] = $row;
}

echo json_encode($analytics);

$conn->close();
?>
