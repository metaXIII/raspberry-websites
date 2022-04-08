<?php

    namespace repository;

    use dto\GameDTO;
    use enums\Status;
    use impl\ConsoleServiceImpl;
    use model\Database;
    use model\Game;
    use PDO;

    class GameRepository {

        private PDO $database;
        private ConsoleServiceImpl $consoleService;

        public function __construct() {
            $this->database = Database::getPdo();
            $this->consoleService = new ConsoleServiceImpl();
        }

        public function findAll() {
            $req = "select * from game";
            return $this->database->query($req)->fetchAll(PDO::FETCH_CLASS, Game::class);
        }

        public function findByStatus(int $status) {
            $req = "select * from game where status = :status";
            $query = $this->database->prepare($req);
            $query->execute([":status" => $status]);
            return $query->fetchObject(Game::class);
        }

        public function countAll() {
            return $this->database->query("select count(*) as total from game")->fetch();
        }

        public function countByStatusNotStarted() {
            $req = "select count(*) as total from game where status != :progress and status != :notStarted";
            $query = $this->database->prepare($req);
            $query->bindValue(":progress", Status::IN_PROGRESS->getStatus());
            $query->bindValue(":notStarted", Status::NOT_STARTED->getStatus());
            $query->execute();
            return $query->fetch();
        }

        public function save(GameDTO $gameDTO) {
            $req = "insert into game (name, id_console, status) values (:name, :console, 1)";
            $query = $this->database->prepare($req);
            $query->bindValue(":name", $gameDTO->getName());
            $query->bindValue(":console", $this->consoleService->findByName($gameDTO->getConsole())->getIdConsole());
            $query->execute();
        }

        public function findAllByStatus(int $status) {
            $req = "select * from game where status = :status";
            $query = $this->database->prepare($req);
            $query->execute([":status" => $status]);
            return $query->fetchAll(PDO::FETCH_CLASS, Game::class);
        }

        public function update(Game $random) {
            $req = "update game set status = 2 where id_game = " . $random->getIdGame();
            $this->database->query($req)->execute();
        }

        public function end(int $id) {
            $req = "update game set status = 3 where id_game = " . $id;
            $this->database->query($req)->execute();
        }

        public function abandonned(int $id) {
            $req = "update game set status = 4 where id_game = " . $id;
            $this->database->query($req)->execute();
        }
    }
