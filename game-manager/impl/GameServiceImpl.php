<?php

    namespace impl;

    use dto\GameDTO;
    use enums\Status;
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

        public function play() {
            if (!$this->gameRepository->findByStatus(Status::IN_PROGRESS->getStatus())) {
                $total = $this->gameRepository->findAllByStatus(Status::NOT_STARTED->getStatus());
                $random = rand(1, sizeof($total));
                $this->gameRepository->update($total[$random]);
            }
        }

        public function end($id) {
            $this->gameRepository->end((int) $id);
        }

        public function abandonned($id) {
            $this->gameRepository->abandonned((int) $id);
        }
    }
