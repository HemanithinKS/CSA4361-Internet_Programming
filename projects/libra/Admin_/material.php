<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <title>File upload and download</title>
  
    <style type="text/css">
        body {
            background-image: url("images/66.jpg");
            background-repeat: no-repeat;
        }
        .wrapper {
            padding: 10px;
            margin: -20px auto;
            width: 900px;
            height: 600px;
            background-color: black;
            opacity: .8;
            color: white;
        }
        .form-control {
            height: 70px;
            width: 60%;
        }
        .scroll {
            width: 100%;
            height: 300px;
            overflow: auto;
        }
        /* Add styles for the navbar */
        .navbar {
            background-color: #343a40; /* Dark background color */
        }
        .navbar a {
            color: white; /* Text color */
            padding: 14px 16px; /* Padding around text */
            text-decoration: none; /* Remove underlines from links */
        }
        .navbar a:hover {
            background-color: #ddd; /* Light gray background color on hover */
            color: black; /* Text color on hover */
        }
    </style>
</head>
<body>

    <!-- Include the navbar from navbar.php -->
    <?php include "navbar.php"; ?>

    <div class="container mt-5">
        <h2>Upload a file</h2>
        <form action="upload.php" method="POST" enctype="multipart/form-data">
            <div class="mb-3">
                <label for="file" class="form-label">Select file</label>
                <input type="file" class="form-control" name="file" id="file">
            </div>
            <button type="submit" class="btn btn-primary">Upload file</button>
        </form>
    </div>

</body>
</html>
