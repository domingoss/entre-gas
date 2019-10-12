<?php

	function fechaConexao($conexao){

		$fecha = mysqli_close($conexao);

		if(!$fecha){

			echo("Imposivel Fechar a conexao");

			return false;
		}else {

			return true;
		}

	}
