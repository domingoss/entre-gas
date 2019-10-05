<?php
/**
 * Created by PhpStorm.
 * User: ESCOPIL
 * Date: 14-01-2019
 * Time: 14:03
 */
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Credentials: true");
header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
header('Access-Control-Max-Age: 1000');
header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization');

include_once("../../dao/pesquisa.php");
include_once("../../dao/adicionar.php");

date_default_timezone_set("Africa/Maputo");

//$data_actual = date("Y-m-d H:i:s");

$postdata = file_get_contents("php://input");
$request = json_decode($postdata);
$utilizador = $request->utilizador;
$mensagem = $request->mensagem;





$produtos = select("p_produto","*","WHERE p_end_date > NOW()");


$array = array(
'dados'=> 'teste de conexao',
'projecto'=>'entre gas',
'utilizador'=>$utilizador,
'produtos'=>$produtos

);

echo json_encode($array);
