<?php

    namespace dto;

    class ConsoleDTO {

        private string $name;

        /**
         * @param string $name
         */
        public function __construct(string $name) {
            $this->name = $name;
        }

        /**
         * @return string
         */
        public function getName(): string {
            return $this->name;
        }
    }
