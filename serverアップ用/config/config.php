<?php
error_reporting(E_ALL & ~E_WARNING);

ini_set('date.timezone', 'Asia/Tokyo');
define('DB_HOST', 'mysql57.mkportfolio.sakura.ne.jp');
define('DB_NAME', 'mkportfolio_reserve');
define('DB_USER', 'mkportfolio');
define('DB_PASSWORD', 'mkportbase21');

// define('ADMIN_EMAIL', 'admin@example.com');

define('ADMIN_EMAIL', 'mkport21@gmail.com');
// define('ADMIN_EMAIL', 'mk_yhmail@yahoo.co.jp');


mb_language('Japanese');
mb_internal_encoding('UTF-8');