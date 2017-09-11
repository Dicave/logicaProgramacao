<?php
	//funcao que abre um arquivo de texto e retorna o seu conteúdo como STRING
	$cabecalho = file_get_contents("cabecalho.html");
	print($cabecalho);
?>
	<section id="meio">
<?php
	//funcao que abre um arquivo de texto e retorna o seu conteúdo como ARRAY (sendo cada posicao uma linha)
	$agenda = file("agenda.csv");
	print_r($agenda);
?>
	</section>
<?php
	$rodape = file_get_contents("rodape.html");
	print($rodape);
?>