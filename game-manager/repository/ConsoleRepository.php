<?php

    namespace repository;

    use dto\ConsoleDTO;
    use model\Console;
    use model\Database;
    use PDO;

    class ConsoleRepository {

        private PDO $database;

        public function __construct() {
            $this->database = Database::getPdo();
        }

        public function findAll() {
            $req = "select * from console";
            return $this->database->query($req)->fetchAll(PDO::FETCH_CLASS, Console::class);
        }

        public function findById(int $id) {
            $req = "select * from console where id_console = :id_console";
            $query = $this->database->prepare($req);
            $query->execute([":id_console" => $id]);
            return $query->fetchObject(Console::class);
        }

        public function findByName(string $name) {
            return $this->database->query("select * from console where name = '$name'")->fetchObject(Console::class);
        }

        public function save(ConsoleDTO $consoleDTO) {
            $all = $this->findAll();
            $control = true;
            for ($i = 0; $i < count($all); $i++) {
                if (strcasecmp($all[$i]->getName(), $consoleDTO->getName()) === 0) {
                    $i = count($all);
                    $control = false;
                }
            }
            if ($control) {
                $this->database->prepare("insert into console(name) values (:name)")->execute([":name" => $consoleDTO->getName()]);
            }
        }
    }
