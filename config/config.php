<?php
error_reporting(E_ALL & ~E_WARNING);

ini_set('date.timezone', 'Asia/Tokyo');

define('DB_HOST', 'reserve-mysql-1');
define('DB_NAME', 'reserve');
define('DB_USER', 'root');
define('DB_PASSWORD', 'password');

define('ADMIN_EMAIL', 'mnbk21@gmail.com');
// define('ADMIN_EMAIL', 'mkport21@gmail.com');
// define('ADMIN_EMAIL', 'mkportfolio@www5327.sakura.ne.jp');
// define('ADMIN_EMAIL', 'postmaster@mkportfolio.sakura.ne.jp');



mb_language('Japanese');
mb_internal_encoding('UTF-8');