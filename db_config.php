<?php

// database confir
$config = [
	'connection_string' => 'mysql:host=127.0.0.1;dbname=idiorm_example_db;port=3306',
	'username' => 'test_user',
	'password' => 'somepass1234',
	'return_result_sets' => true,
	'driver_options' => [
		PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'
	]
];

ORM::configure($config, null, 'default');
ORM::configure('logging', true, 'default');
ORM::configure('logger', function($log_string, $query_time) {
    $log = PHP_EOL . $query_time . PHP_EOL . $log_string . PHP_EOL;
	$file = 'query.log';
	file_put_contents($file, $log, FILE_APPEND | LOCK_EX);
}, 'default');