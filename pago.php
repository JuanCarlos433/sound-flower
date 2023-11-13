<?php
    session_start();
    /*
    if(!isset($_SESSION['logeado'])|| !$_SESSION['logeado']){
        header('Location: login.html');
    }
    */
    require_once('assets/php/conexion.php');
    mysqli_set_charset($conn,'utf8');
    if($_POST){
        $usuario=$_SESSION['emailUs'];
        $sql="UPDATE usuario SET Esta_Suscrito='1' WHERE Correo ='$usuario'";
        $env=mysqli_query($conn,$sql);
        echo '<script> alert("Su pago se realizo con exito") </script>';
        header("Location: pago.php");
    }

?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Inicia Sesion</title>
    <link rel="stylesheet" href="pago.css">
</head>
<body>
    <main class="c2">
        <div  class="logi1">
            <form action="pago.php" method='post'>
                <h1>Suscribete</h1>
                <p>Tansolo paga $299.00 y haste vip ya</p>
                <div class="input-box">
                    <input type="text" required>
                    <label>Nombre del propietario</label>
                </div>
                <div class="input-box">
                    <input type="number" required>
                    <label>Numero de targeta</label>
                </div>
                <div class="input-box">
                    <input type="number" required>
                    <label>CVV</label>
                </div>
                <div class="input-box">
                    <input type="number" required>
                    <label>Fecha de vencimiento</label>
                </div>
                <div class="input-box">
                    <input type="number" required>
                    <label>Codigo postal</label>
                </div>
                <div class="input-box">
                    <input type="text" required>
                    <label>Direccion</label>
                </div>
                <div class='c1'>
                <span id="span1"></span>
                    <input class='terminar' type='submit' value='paga ya'></input>
                    <span id="span2"></span>
                    <span id="span3"></span>
                    <span id="span4"></span>
                </div>
                
                <div class="register-link">
                    <p>No tienes dinero? <a href="#">regresar</a></p><br>
                </div>
            </form>
        </div>
    </main>
    
</body>
</html>