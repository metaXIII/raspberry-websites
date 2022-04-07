<?php

    namespace impl;

    use dto\GameDTO;
    use repository\GameRepository;
    use service\IGameService;

    class GameServiceImpl implements IGameService {

        private GameRepository $gameRepository;


        public function __construct() {
            $this->gameRepository = new GameRepository();
        }

        public function findAll() {
            return $this->gameRepository->findAll();
        }

        public function findByStatus(int $status) {
            return $this->gameRepository->findByStatus($status);
        }

        public function getStatistics(): string {
            $total = $this->gameRepository->countAll()['total'];
            $currentFinished = $this->gameRepository->countByStatusNotStarted()['total'];
            $percent = ($currentFinished * 100) / $total;
            return $currentFinished . "/" . $total . " => " . $percent . "%";
        }

        public function save(array $post) {
            $name = htmlspecialchars($post["name"]);
            $console = htmlspecialchars($post["console"]);
            $gameDTO = new GameDTO($name, $console);
            $this->gameRepository->save($gameDTO);
        }
    }
