<?php
include_once 'assets/php/conexion.php';
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
  </head>
  <body>
    <form action="assets/php/crear-artista.php" method="post" enctype="multipart/form-data">
      <label for="nombre">Nombre</label>
      <input type="text" name="nombre" id="nombre" required />
      <label for="descripcion">Descripción</label>
      <textarea name="descripcion" id="descripcion" cols="30" rows="10" required></textarea>
      <label for="foto">Foto</label>
      <input type="file" name="foto" id="foto" accept="image/*" />
      <img id="preview" />
      <label for="disquera">Disquera</label>
      <select name="disquera" id="disquera" required>
        <?php
        $query = 'SELECT Id, Nombre FROM usuarios WHERE Es_Disquera = 1';
        $result = mysqli_query($conn, $query);
        while ($row = mysqli_fetch_array($result)) {
        ?>
          <option value="<?php echo $row['Id'] ?>"><?php echo $row['Nombre'] ?></option>
        <?php
        }
        ?>
      </select>
      <input type="submit" value="Crear">
    </form>
    <script type="module" src="assets/js/crear-artista.js"></script>
  </body>
</html>
