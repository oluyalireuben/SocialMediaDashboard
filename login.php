<?php
session_start();

// Database connection
$conn = new mysqli('localhost', 'root', '', 'social_media_dashboard');

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Handle form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Prepare statement to prevent SQL injection
    $stmt = $conn->prepare("SELECT id, password FROM users WHERE username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $stmt->bind_result($id, $hashed_password);

    // Verify password
    if ($stmt->fetch() && password_verify($password, $hashed_password)) {
        // Set session variables
        $_SESSION['user_id'] = $id;
        $_SESSION['username'] = $username; // Store username in session

        // Redirect to dashboard
        header("Location: dashboard.php");
        exit();
    } else {
        echo "Invalid username or password";
    }

    $stmt->close();
}

$conn->close();
?>
