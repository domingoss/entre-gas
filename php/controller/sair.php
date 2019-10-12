<?php
/**
 * Created by PhpStorm.
 * User: TechJonas
 * Date: 08/10/2018
 * Time: 14:52
 */
 header('Access-Control-Allow-Origin: *');
 header("Access-Control-Allow-Credentials: true");
 header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
 header('Access-Control-Max-Age: 1000');
 header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization');



session_start();

session_destroy();

$status = array(
    'estado'=>'sucesso'
);
echo json_encode($status);
