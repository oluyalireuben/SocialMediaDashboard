<?php
session_start();

// Check if the user is logged in
if (!isset($_SESSION['username'])) {
    header('Location: login.html');
    exit();
}

$username = htmlspecialchars($_SESSION['username']);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Internal CSS to style the dashboard page */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .dashboard-container {
            width: 80%;
            margin: auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        header {
            border-bottom: 2px solid #007bff;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }

        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        h1 {
            margin: 0;
            color: #333;
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        nav ul li {
            display: inline;
            margin-right: 10px;
        }

        nav ul li a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }

        nav ul li a:hover {
            text-decoration: underline;
        }

        .welcome-section {
            margin-bottom: 20px;
        }

        .welcome-section h2 {
            color: #333;
        }

        .dashboard-sections {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }

        .section-card {
            flex: 1 1 calc(33.333% - 20px);
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        .section-card h3 {
            margin-top: 0;
            color: #333;
        }

        .section-card p {
            color: #666;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            margin-top: 10px;
            text-decoration: none;
            color: #fff;
            background-color: #007bff;
            border-radius: 4px;
            font-size: 1rem;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="dashboard-container">
    <header>
        <div class="header-content">
            <h1>Dashboard</h1>
            <nav>
                <ul>
                    <li><a href="post_scheduling.html">Schedule Posts</a></li>
                    <li><a href="analytics.html">View Analytics</a></li>
                    <li><a href="messages.html">Messages</a></li>
                    <li><a href="logout.php">Logout</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <main>
        <section class="welcome-section">
            <h2>Welcome, <?php echo $username; ?></h2>
            <p>Your recent activities and updates will be displayed here.</p>
        </section>
        <section class="dashboard-sections">
            <div class="section-card">
                <h3>Schedule Posts</h3>
                <p>Manage and schedule your posts for various social media platforms.</p>
                <a href="post_scheduling.html" class="btn">Go to Schedule Posts</a>
            </div>
            <div class="section-card">
                <h3>View Analytics</h3>
                <p>Review and analyze your social media performance.</p>
                <a href="analytics.html" class="btn">Go to Analytics</a>
            </div>
            <div class="section-card">
                <h3>Messages</h3>
                <p>Check and respond to your received messages.</p>
                <a href="messages.html" class="btn">Go to Messages</a>
            </div>
            <div class="section-card">
                <h3>Logout</h3>
                <p>Logout from your account.</p>
                <a href="logout.php" class="btn">Logout</a>
            </div>
        </section>
    </main>
</div>
</body>
</html>
