<?php

    namespace service;

    interface IGameService {
        public function findAll();

        public function findByStatus(int $status);

        public function getStatistics();

        public function save(array $post);

        public function play();

        public function end($id);

        public function abandonned($id);
    }
