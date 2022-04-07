<?php

    namespace service;

    interface IConsoleService {
        public function findAll();

        public function findById(int $id);

        public function findByName(string $name);

        public function save(array $post);
    }
