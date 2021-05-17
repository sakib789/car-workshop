<!DOCTYPE html>
<?php
    session_start();
    require_once('php/connect.php');
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <title>Login</title>
    <link rel="shortcut icon" href="img/favicon.png">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    <script src="js/main.js"></script>
    <style>
        .main {
            background-image: url('img/back02.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 2200px 1500px;
            padding-bottom: 20px;
        }
    </style>
</head>
<body>
<header class="brand"><h1>Car Repair Shop</h1></header>

<!-- Start Navbar Section -->

<nav>
    <ul>
        <li><a href="#" class="active">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Service</a></li>
        <li><a href="#">contact</a></li>
    </ul>
</nav>
    
<!-- End Navbar Section -->
    <div class="main">
    <div class="welcome_text">
        <p>Welcome to Our Repair Shop</p>
    </div>
    <div class="container log_in">
        <h1>Login</h1>
        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
            <input id="0100" onkeyup="fnc_mail('0100', '0101')" type="text" name = "email" placeholder="Email Address" class="field" required="required">
            <p id = "0101" style="color: red"></p>
            <input type="password" name = "pass" placeholder="password" class="field" required="required">
            <input type="submit" name = "submit" value="login" class="btn">
        </form>
        <div class="pass-link">
            <a href="php/reg.php" style="color: black">Don't have an account? <span style="color: white"> Create one!</span></a>
        </div>	
    </div>
    </div>
    <?php
        $email = $pass = "";
        if($_SERVER["REQUEST_METHOD"] == "POST"){
            $email = $_POST["email"];
            $pass = $_POST["pass"];
            $str = $pass;
            for($i = 0; $i < strlen($pass); $i = $i + 1){
                $str = $str . $i;
            }
            $str = $str . $pass;
            $str = sha1($str);
            $sql = "SELECT name, email, pass, type FROM user WHERE email = '$email'";
            $result = $conn->query($sql);
            if($result->num_rows > 0){
                while($row = $result->fetch_assoc()){
                    if($row['pass'] == $str){
                        $_SESSION['name'] = $row['name'];
                        $_SESSION['email'] = $row['email'];
                        $_SESSION['login'] = true;
                        if($row['type'] == 1){
                            header("Location: php/admin.php");
                        }
                        else{
                            header("Location: php/user.php");
                        }
                    }
                    else{
                        echo "<script type='text/javascript'>alert('wrong pass!');</script>";
                    }
                }
            }
            else{
                echo "<script type='text/javascript'>alert('no user found');</script>";
            }
        }
        $conn->close();
    ?>
    <footer>
         <p>
            © Md. Nazmur Sakib 2021, All rights reserved
        </p>
    </footer>
</body>
</html>
<!--so far, ok!-->