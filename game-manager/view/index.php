<?php

    use impl\ConsoleServiceImpl;

    include "view/include/header.php";
    $game = $game ?? null;
    $stats = $stats ?? null;
    $consoleService = new ConsoleServiceImpl();
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
                        <th scope="row"><?= $game->getIdGame() ?></th>
                        <td><?= $game->getName() ?></td>
                        <td><?= $consoleService->findById($game->getIdConsole())->getName() ?> </td>
                        <td>
                            <a class="btn btn-success" href="end/<?= $game->getIdGame() ?>">Indiquer le jeu comme terminé</a>
                            <a class="btn btn-danger" href="abandonned/<?= $game->getIdGame() ?>" >Abandonner le jeu</a>
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
