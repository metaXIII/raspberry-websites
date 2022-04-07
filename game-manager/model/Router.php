<?php

    namespace model;

    class Router {
        private $url;
        private $routes = [];
        private $namedRoutes = [];

        /**
         * Router constructor.
         * @param $url
         */
        public function __construct($url) {
            $this->url = $url;
        }

        public function get($path, $callable, $name = null) {
            return $this->add($path, $callable, $name, 'GET');
        }

        public function post($path, $callable, $name = null) {
            return $this->add($path, $callable, $name, 'POST');
        }

        private function add($path, $callable, $name, $method) {
            $route = new Route($path, $callable);
            $this->routes[$method][] = $route;
            if (is_string($callable) && $name === null)
                $name = $callable;
            if ($name) {
                $this->namedRoutes[$name] = $route;
            }
            return $route;
        }


        public function run() {
            try {
                if (!isset($this->routes[$_SERVER['REQUEST_METHOD']])) {
                    throw new RouterException('REQUEST_METHOD does not exist');
                }
                foreach ($this->routes[$_SERVER['REQUEST_METHOD']] as $route) {
                    if ($route->match($this->url)) {
                        return $route->call();
                    }
                }
                throw new RouterException("No route matches");
            } catch (RouterException $exception) {
                include "view/public/404.php";
            }
            return false;
        }

        public
        function url($name, $params = []) {
            try {
                if (!isset($this->namedRoutes[$name])) {
                    throw new RouterException ('No route match this name');
                }
                return $this->namedRoutes[$name]->getUrl($params);
            } catch (RouterException $exception) {
                echo $exception->getMessage();
            }
            return false;
        }
    }
