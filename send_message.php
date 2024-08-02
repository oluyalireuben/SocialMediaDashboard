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
    $message = $_POST['message'];

    $stmt = $conn->prepare("INSERT INTO messages (user_id, message, received_at) VALUES (?, ?, NOW())");
    $stmt->bind_param("is", $user_id, $message);

    if ($stmt->execute()) {
        header("Location: messages.html");
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
}

$conn->close();
?>
