<?php

    namespace impl;

    use dto\ConsoleDTO;
    use repository\ConsoleRepository;
    use service\IConsoleService;

    class ConsoleServiceImpl implements IConsoleService {

        private ConsoleRepository $consoleRepository;

        public function __construct() {
            $this->consoleRepository = new ConsoleRepository();
        }

        public function findAll() {
            return $this->consoleRepository->findAll();
        }

        public function findById(int $id) {
            return $this->consoleRepository->findById($id);
        }

        public function findByName(string $name) {
            return $this->consoleRepository->findByName($name);
        }

        public function save(array $post) {
            $name = htmlspecialchars($post["name"]);
            $consoleDTO = new ConsoleDTO($name);
            $this->consoleRepository->save($consoleDTO);
        }
    }
