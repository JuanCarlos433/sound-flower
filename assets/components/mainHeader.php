<?php
    require_once('assets/php/conexion.php');
    $id = $_SESSION['id'];
    $selectorIMG = "SELECT Foto FROM usuarios WHERE Id = '$id'";
    $envioIMG = mysqli_query($conn, $selectorIMG);
    if(mysqli_num_rows($envioIMG) > 0){
        $filaUsuario = mysqli_fetch_assoc($envioIMG);
        $img = $filaUsuario['Foto'];
    }
    else{
        $img = "/assets/img/user.jpg";
    }
    
?>
<link rel="stylesheet" href="assets/components/mainHeader.css">
<link rel="stylesheet" href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css">
<script src="assets/js/redirecciones.js"></script>
<header id="main_Header">
    <section onclick="redireccionIndex()" id="logo_Container">
        <img src=/assets/img/logo.svg>
    </section>

    <nav id="navegation_Conatiner">
        <form action="/index.php" method="get">
            <label>
                <section id="search_Container">
                    <input type="search" 
                    name="search"
                    placeholder="¿Qué canción quieres escuchar?"
                    >
                </section>
                <section id="lupa_Container">
                    <i class='bx bx-search'></i>
                </section>
            </label>
        </form>
    </nav>

    <section onclick="redireccionUsuario(<?php echo $id ?>)" id="user_Container">
        <img src="<?php echo $img ?>">                    
    </section>
</header>