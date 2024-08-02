# Social Media Dashboard

This project is a web-based application for managing social media accounts with features such as scheduling posts, viewing analytics, and responding to messages. It is built using HTML, CSS, JavaScript, and PHP for database interactions.

## Features

- **User Registration and Login**: Allows users to register and log in to the dashboard.
- **Dashboard**: Overview of the user's activities and links to other sections.
- **Schedule Posts**: Schedule posts to be published at a later date.
- **View Analytics**: Display performance metrics and analytics.
- **Messages**: Send and receive messages.
- **Logout**: Securely log out from the dashboard.

## Technologies Used

- **Frontend**: HTML, CSS, JavaScript
- **Backend**: PHP
- **Database**: MySQL

## Installation

1. **Clone the repository**:
    ```bash
    git clone https://github.com/oluyalireuben/SocialMediaDashboard.git
    cd social-media-dashboard
    ```

2. **Set up the database**:
    - Create a MySQL database named `social_media_dashboard`.
    - Import the provided `social_media_dashboard.sql` file to set up the necessary tables.

3. **Configure the database connection**:
    - Update the database connection details in `db.php`:
      ```php
      $conn = new mysqli('localhost', 'root', '', 'social_media_dashboard');
      ```

4. **Start a local server**:
    - Use XAMPP, MAMP, or any other local server to run the project.
    - Place the project folder in the server's root directory (e.g., `htdocs` for XAMPP).

5. **Access the application**:
    - Open your web browser and navigate to `http://localhost/projects/social_media_dashboard/`.

## Usage

### Registration

- Go to the registration page and create a new account by providing a username and password.

### Login

- Go to the login page and enter your credentials to access the dashboard.

### Dashboard

- After logging in, you will be directed to the dashboard where you can access different sections like scheduling posts, viewing analytics, and messages.

### Schedule Posts

- Navigate to the "Schedule Posts" section, enter the post content and the desired date and time, and click "Schedule Post" to schedule a new post.

### View Analytics

- Navigate to the "View Analytics" section to see the analytics and performance metrics of your social media activities.

### Messages

- Navigate to the "Messages" section to view and respond to messages.

### Logout

- Click on the "Logout" link in the navigation bar to securely log out from your account.



