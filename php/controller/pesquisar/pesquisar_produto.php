<?php

header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Credentials: true");
header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
header('Access-Control-Max-Age: 1000');
header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token , Authorization');

include_once("../../dao/pesquisa.php");
include_once("../../dao/adicionar.php");


date_default_timezone_set("Africa/Maputo");

 $data_actual = date("Y-m-d H:i:s");

$postdata = file_get_contents("php://input");
$request = json_decode($postdata);
$utilizador = $request->utilizador;
$mensagem = $request->mensagem;




$produtos = select("p_produto","p_id,p_nome,p_peso, p_preco","WHERE p_end_date > NOW()");

if (count($produtos)>0) {
  http_response_code(200);
  echo json_encode($produtos);
}else {
  http_response_code(404);
  echo json_encode(
     array('mensagem' =>  'Produto nao encontrado' )
   );
}

//
// $array = array(
// 'produtos'=>$produtos
//
// );
