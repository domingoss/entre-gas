<?php
/**
 * Created by PhpStorm.
 * User: ESCOPIL
 * Date: 14-01-2019
 * Time: 14:03
 */
header('Access-Control-Allow-Origin: *');
header('Content-type: application/json');

include_once("../../dao/pesquisa.php");
include_once("../../dao/adicionar.php");

date_default_timezone_set("Africa/Maputo");

$data_actual = date("Y-m-d H:i:s");

$utilizador = $_REQUEST["utilizador"];
$mensagem = $_REQUEST["mensagem"];

$array = array(
'dados'=> 'teste de conexao',
'projecto'=>'entre gas',
'utilizador'=>$utilizador

);

echo json_encode($array);
