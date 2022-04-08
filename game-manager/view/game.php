<?php
    include "include/header.php";
    $consoles = $consoles ?? null;
?>
<div class="container">
    <h1>Ajouter un nouveau jeu :</h1>
    <form action="#" method="post">
        <div class="form-group">
            <label for="name">Nom du jeu : </label>
            <input type="text" class="form-control" id="name" placeholder="Nom du jeu" name="name">
        </div>
        <div class="form-group">
            <label for="console">Nom de la console :</label>
            <select name="console" id="console" class="form-control">
                <option value=""></option>
                <?php
                    foreach ($consoles as $console) {
                        echo "<option>" . $console->getName() . "</option>";
                    }
                ?>>
            </select>
        </div>
        <button class="mt-2 btn btn-primary" type="submit">Envoyer</button>
    </form>
</div>
