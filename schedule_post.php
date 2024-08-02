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
    $content = $_POST['content'];
    $scheduled_at = $_POST['scheduled_at'];

    $stmt = $conn->prepare("INSERT INTO posts (user_id, content, scheduled_at) VALUES (?, ?, ?)");
    $stmt->bind_param("iss", $user_id, $content, $scheduled_at);

    if ($stmt->execute()) {
        echo "Post scheduled successfully!";
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
}

$conn->close();
?>
