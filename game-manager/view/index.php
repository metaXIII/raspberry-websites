<?php
    include "view/include/header.php";
    $game = $game ?? null;
    $stats = $stats ?? null;
?>

<div class="container table-responsive-md">
    <a href="<?= WEBROOT ?>new" class="btn btn-primary float-end">Jouer à un nouveau jeu</a>
    <h3 class="text-decoration-underline">Jeu en cours :</h3>
    <table class="table">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Nom du jeu</th>
                <th scope="col">Console</th>
                <th scope="col">Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php
                if ($game):
                    ?>
                    <tr>
                        <th scope="row">{{jeux.id}}</th>
                        <td>{{jeux.name}}</td>
                        <td>{{jeux.console.name}}</td>
                        <td>
                            <button class="btn btn-success">Indiquer le jeu comme terminé</button>
                            <button class="btn btn-danger">Abandonner le jeu</button>
                        </td>
                    </tr>
                <?php
                endif;
            ?>
        </tbody>
    </table>
</div>
<div class="container">
    <p>Statistiques : <?= $stats ?> </p>
</div>
