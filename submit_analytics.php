<?php
session_start();

// Database connection
$conn = new mysqli('localhost', 'root', '', 'social_media_dashboard');

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Handle form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $user_id = $_SESSION['user_id'];
    $analytics_data = $_POST['analytics_data'];

    $stmt = $conn->prepare("INSERT INTO analytics (user_id, data, created_at) VALUES (?, ?, NOW())");
    $stmt->bind_param("is", $user_id, $analytics_data);

    if ($stmt->execute()) {
        header("Location: analytics.html");
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
}

$conn->close();
?>
