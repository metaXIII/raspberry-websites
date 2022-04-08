<?php

    namespace controller;

    use enums\Status;
    use impl\ConsoleServiceImpl;
    use impl\GameServiceImpl;
    use model\Router;

    class Controller {
        private static ?Controller $instance = null;
        private GameServiceImpl $gameService;
        private ConsoleServiceImpl $consoleService;

        public function __construct() {
            $this->gameService = new GameServiceImpl();
            $this->consoleService = new ConsoleServiceImpl();
        }

        public static function getInstance() {
            if (is_null(self::$instance)) {
                self::$instance = new Controller();
            }
            return self::$instance;
        }

        public function getRoute(string $url) {
            $router = new Router($url);
            $router->get("/", function () {
                $game = $this->gameService->findByStatus(Status::IN_PROGRESS->getStatus());
                $stats = $this->gameService->getStatistics();
                include "view/index.php";
            });
            $router->get("game", function () {
                $consoles = $this->consoleService->findAll();
                include "view/game.php";
            });
            $router->post("game", function () {
                $this->gameService->save($_POST);
                header("location:" . WEBROOT);
                die();
            });
            $router->get("console", function () {
                include "view/console.php";
            });
            $router->post("console", function () {
                $this->consoleService->save($_POST);
                header("location:" . WEBROOT);
                die();
            });
            $router->get("list", function () {
                $games = $this->gameService->findAll();
                include "view/list.php";
            });
            $router->get("new", function () {
                header("location:" . WEBROOT);
                die();
            });
            $router->get("error", function () {
                include "view/index.php";
            });
            $router->run();
            include "view/include/footer.php";
        }
    }
