<?php
session_start();

$error_message = "Ondo"; 

if (isset($_POST['erabiltzailea']) && isset($_POST['pasahitza'])) {
    
    $servername = "localhost";
    $username = "root";
    $password = "";
    $db = "db_jpamt7";

    $mysqli = new mysqli($servername, $username, $password, $db);

    if ($mysqli->connect_error) {
        die("Connection failed: " . $mysqli->connect_error);
    }

    $erabiltzailea = $_POST["erabiltzailea"];
    $pwd = $_POST["pasahitza"]; 

    $sql = "SELECT IDBezeroa FROM bezeroa WHERE erabiltzailea = '$erabiltzailea' AND pasahitza = '$pwd'";
    
    $result = $mysqli->query($sql);

    if ($result && $result->num_rows > 0) {
        $_SESSION['erabiltzailea'] =  $erabiltzailea;
        if (isset($erabiltzailea)) {
            header("Location: ../xml/departamentuak.xml");
            exit;
        }
    } else {
        $error_message = "Txarto";
       echo '<script>
               alert("Erabiltzaile edo pasahitza txarto sartu duzu");
               window.location.href = "login.php";
            </script>'
    ;}

    $mysqli->close();
}


?>


<!DOCTYPE html>
<html lang="eu">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/login.css">
    <link rel="shortcut icon" href="../img/logo/BlancoTransparente.png">
    <title>JPAM Music</title>
</head>
<body>
<main>
    <div class="kutxa">
        <a href="../index.html">
            <img id="buelta" src="../img/loginIMG/ixa.svg" alt="buelta">
        </a>
        <h1>Log-In</h1>
        <form id="userform" action="login.php" method="POST">
            <div class="userkutxa">
                <img src="../img/loginIMG/erabiltzaile.svg" alt="erabiltzailea" required>
                <label for="erabiltzailea">Erabiltzailea</label> <br>
            </div>
            <input type="text" id="erabiltzailea" name="erabiltzailea"> <br>
            <div class="userkutxa">
                <img src="../img/loginIMG/psahitza.svg" alt="pasahitza" required>
                <label for="pasahitza">Pasahitza</label> <br>
            </div>
            <input type="password" id="pasahitza" name="pasahitza">
            <br>
            <input type="submit" id="jarraitu" value="Jarraitu">
        </form>
    </div>
</main>

</body>
</html>
