<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Login OpenSID Kabupaten Bengkalis</title>
    <style>
    label {
        display: block;
    }
    </style>

    <!-- Custom styles for this template -->
    <link href="dist/css/login.css" rel="stylesheet">
    <link rel="stylesheet" href="font-awesome/css/all.min.css">

</head>

<body>
    <div class="container">
        <div class="gambar">
            <img src="dist/images/ic_bengkalis.png" alt="">
        </div>
        <h1 class="text-h1">Login</h1>
        <?php
        if(array_key_exists('error', $_GET)){
        ?>
        <script>
        alert('Username atau Password Salah!')
        </script>;
        <?php } ?>

        <form action="proses-login.php" method="POST">

            <div class="text-box">
                <i class="far fa-user awesome" aria-hidden="true"></i>
                <input type="text" name="username" id="username" placeholder="Username" required>
            </div>

            <div class="text-box">
                <i class="fa fa-lock awesome" aria-hidden="true"></i>
                <input type="password" name="password" id="password" placeholder="Password" required>
            </div>

            <button class="btn" type="submit" name="login" id="login">Login</button>

        </form>



    </div>

</body>

</html>