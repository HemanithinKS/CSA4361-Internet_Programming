<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Materials</title>
</head>
<body>

<h2>Materials Available for Download</h2>

<?php
// Include the database connection file
include "connection.php";
  include "navbar.php";

// Retrieve file information from the database (adjust the table and column names)
$sql = "SELECT * FROM materials";
$result = $db->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $filename = $row['filename'];
        echo '<a href="uploads/' . $filename . '" download>' . $filename . '</a><br>';
    }
} else {
    echo "No materials available for download.";
}

// Close the database connection
$db->close();
?>

</body>
</html>
