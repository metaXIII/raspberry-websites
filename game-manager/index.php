<?php

    use controller\Controller;
    use model\Autoloader;

    require "constants/constants.php";
    require "model/Autoloader.php";

    Autoloader::register();
    $controller = new Controller();
    $controller->getRoute($_GET['url'] ?? "/");


