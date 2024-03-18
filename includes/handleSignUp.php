<?php
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Validate and sanitize other form fields (name, username, email, password) as needed
    // ...

    // Process selected interests
    $interests = isset($_POST['interests']) ? $_POST['interests'] : [];
    // Save interests in the user's profile or database
    // For demonstration purposes, let's just print them
    echo "Selected Interests: <br>";
    foreach ($interests as $interest) {
        echo $interest . "<br>";
    }

    // Redirect to a success page or perform any other action
    // header("Location: success.php");
} else {
    // Redirect to the form page if accessed directly
    header("Location: ../index.html");
}
?>
