<?php

    use enums\Status;
    use impl\ConsoleServiceImpl;

    include "include/header.php";
    $games = $games ?? null;
    $consoleService = new ConsoleServiceImpl();
?>
<h1>Liste de tous mes jeux</h1>
<div class="container table-responsive-md">
    <table class="table">
        <thead>
            <tr>
                <th scope="col">id</th>
                <th scope="col">Nom du jeu</th>
                <th scope="col">Console</th>
            </tr>
        </thead>
        <tbody>
            <?php
                foreach ($games as $game) {
                    switch ($game->getStatus()) {
                        case Status::NOT_STARTED->getStatus():
                            echo "<tr class='table-danger'>";
                            break;
                        case Status::IN_PROGRESS->getStatus():
                            echo "<tr class='table-primary'>";
                            break;
                        case Status::FINISHED->getStatus():
                            echo "<tr class='table-success'>";
                            break;
                        case Status::GIVE_UP->getStatus():
                            echo "<tr class='table-secondary'>";
                            break;
                        case Status::INVALID->getStatus():
                            echo "<tr class='table-warning'>";
                            break;
                    }
                    ?>
                    <th scope="row"><?= $game->getIdGame() ?></th>
                    <td><?= $game->getName() ?></td>
                    <td><?= $consoleService->findById($game->getIdConsole())->getName() ?></td>
                    </tr>
                    <?php
                }
            ?>
        </tbody>
    </table>
</div>
