<?php
session_start();
if(!isset($_SESSION['id']) || $_SESSION['tipo'] != 0){
    header('Location: login.html');
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Inicia Sesion</title>
    <link rel="stylesheet" href="assets/css/pago.css">
</head>
<body>
    <main class="c2">
        <div  class="logi1">
           
            <form action="assets/php/pago.php">
                <h1>Suscribete</h1>
                <p>Tansolo paga $299.00 y haste vip ya</p>
                <div class="input-box">
                    <input type="text" required name='nombre'>
                    <label>Nombre del propietario</label>
                </div>
                <div class="input-box">
                    <input type="number" required name='targeta'>
                    <label>Numero de targeta</label>
                </div>
                <div class="input-box">
                    <input type="number" required name='CVV'>
                    <label>CVV</label>
                </div>
                <div class="input-box">
                    <input type="number" required name='fecha'>
                    <label>Fecha de vencimiento</label>
                </div>
                <div class="input-box">
                    <input type="number" required name='codigo'>
                    <label>Codigo postal</label>
                </div>
                <div class="input-box">
                    <input type="text" required name='direccion'>
                    <label>Direccion</label>
                </div>
                <a href="#" class="c1">
                    <span id="span1"></span>
                <div class='c1'>
                    <span id="span1"></span>
                    <input class='terminar' type='submit' value='paga ya'></input>
                    <span id="span2"></span>
                    <span id="span3"></span>
                    <span id="span4"></span>
                    Paga ya
                </a> 
    
                <div class="register-link">
                    <p>No tienes dinero? <a href="#">regresar</a></p><br>
                </div>
            </form>
        </div>
    </main>
    
</body>
</html>
