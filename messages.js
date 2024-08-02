// Fetch and display messages
document.addEventListener("DOMContentLoaded", () => {
    fetch('fetch_messages.php')
        .then(response => response.json())
        .then(data => {
            const messagesList = document.getElementById('messagesList');
            data.forEach(message => {
                const li = document.createElement('li');
                li.textContent = `${message.received_at}: ${message.message}`;
                messagesList.appendChild(li);
            });
        });
});
