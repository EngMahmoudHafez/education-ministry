<?php
define('DB_SERVER', 'sql311.infinityfree.com');
define('DB_USER', 'if0_35571691');
define('DB_PASS', '');
define('DB_NAME', 'if0_35571691_newsportal');
$con = mysqli_connect(DB_SERVER, DB_USER, DB_PASS, DB_NAME);
// Check connection
if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
