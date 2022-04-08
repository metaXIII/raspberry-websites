<?php

    namespace model;

    class Console {
        private int $id_console;
        private string $name;

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


    }
