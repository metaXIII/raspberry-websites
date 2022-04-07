<?php

    namespace model;
    class Game {
        private int $id_game;
        private string $name;
        private int $id_console;
        private int $status;

        /**
         * @return int
         */
        public function getIdGame(): int {
            return $this->id_game;
        }

        /**
         * @param int $id_game
         */
        public function setIdGame(int $id_game): void {
            $this->id_game = $id_game;
        }

        /**
         * @return string
         */
        public function getName(): string {
            return $this->name;
        }

        /**
         * @param string $name
         */
        public function setName(string $name): void {
            $this->name = $name;
        }

        /**
         * @return int
         */
        public function getIdConsole(): int {
            return $this->id_console;
        }

        /**
         * @param int $id_console
         */
        public function setIdConsole(int $id_console): void {
            $this->id_console = $id_console;
        }

        /**
         * @return int
         */
        public function getStatus(): int {
            return $this->status;
        }

        /**
         * @param int $status
         */
        public function setStatus(int $status): void {
            $this->status = $status;
        }


    }
