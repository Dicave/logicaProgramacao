<?php
	//funcao que abre um arquivo de texto e retorna o seu conteúdo como STRING
	$cabecalho = file_get_contents("cabecalho.html");
	print($cabecalho);
?>
  <section id="meio">
	<table border="1">
<?php
	//funcao que abre um arquivo de texto e retorna o seu conteúdo como ARRAY (sendo cada posicao uma linha)
	$agenda = file("agenda.csv");
	

	foreach($agenda as $chave=>$linha){
		$colunas = explode(";", $linha);
		print('<tr>
			     <td>'.$colunas[0].'</td>
			     <td>'.$colunas[1].'</td>
			     <td>'.$colunas[2].'</td>
			     <td>'.$colunas[3].'</td>
			   </tr>');
	}
?>
    </table>
  </section>
<?php
	$rodape = file_get_contents("rodape.html");
	print($rodape);
?>