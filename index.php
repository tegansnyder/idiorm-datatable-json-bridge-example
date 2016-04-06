<?php
date_default_timezone_set('America/Chicago');

require 'vendor/autoload.php';
require 'db_config.php';

// setup view
$app = new \Slim\Slim(
  [
    'debug' => true,
    'cache' => 'views/cache',
    'view' => new \Slim\Views\Twig(),
    'templates.path' => 'views/',
  ]
);

$app->view->parserExtensions = [
	new \Slim\Views\TwigExtension(),
	new Twig_Extension_Debug(),
];

$app->view->parserOptions = [
    'charset' => 'utf-8',
    'auto_reload' => true,
    'strict_variables' => false,
    'autoescape' => true,
    'debug'=> true
];

require 'routes.php';

$app->run();