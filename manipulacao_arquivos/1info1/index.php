<?php
	//FUNCAO que abre um arquivo e retorna o seu conteúdo como uma STRING - file_get_contents()
	$cabecalho = file_get_contents("cabecalho.php");
	print($cabecalho);
?>

	<section id="meio">
		<p>Dados trazidos do CSV</p>

<table border='1'>	
<?php
	//FUNCAO que abre um arquivo e retorna o seu conteúdo como um ARRAY - file() -
	//cada posicao equivale a uma linha do arquivo
	$dados = file("agenda.csv");
foreach($dados as $posicao=>$linha){
	echo('<tr class="linha">');

	$partes = explode(";", $linha);

	print("<td>".$partes[0]."</td>");
	print("<td>".$partes[1]."</td>");
	print("<td>".$partes[2]."</td>");
	print("<td>".$partes[3]."</td>");

	echo('</tr>');
}

?>		
</table>
	</section>

<?php
	$rodape = file_get_contents("rodape.php");
	print($rodape);
?>
