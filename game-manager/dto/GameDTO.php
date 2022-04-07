<?php

    namespace dto;

    class GameDTO {
        private string $name;
        private string $console;

        /**
         * @param string $name
         * @param string $console
         */
        public function __construct(string $name, string $console) {
            $this->name = $name;
            $this->console = $console;
        }

        /**
         * @return string
         */
        public function getName(): string {
            return $this->name;
        }

        /**
         * @return string
         */
        public function getConsole(): string {
            return $this->console;
        }
    }
