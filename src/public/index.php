<?php
require_once __DIR__ . '/../vendor/autoload.php';

use Modules\DB\DB;

use \Monolog\Logger as Logger;
use Monolog\Handler\StreamHandler;
use Monolog\Handler\FirePHPHandler;

$db = new DB();
$db->query('SELECT * FROM test');
$result = $db->get();

$logger = new Logger('name');
$logger->pushHandler(new StreamHandler(__DIR__ . '/../log/dev.log', Logger::DEBUG));
$logger->pushHandler(new FirePHPHandler());
$logger->info("Add New Log", ['test' => 'wt']);
