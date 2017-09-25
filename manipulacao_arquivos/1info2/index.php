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
		if($chave == 0 ){//primeira linha
            print('<tr>
			         <th>'.$colunas[0].'</th>
			         <th>'.$colunas[1].'</th>
			         <th>'.$colunas[2].'</th>
			         <th>'.$colunas[3].'</th>
                   </tr>');
		}else{
			//teste para saber qual class vai escrever na TR
			if(($chave % 2)==0){ //se for par
				$cor = 'corPar';
			}else{ //se for impar
				$cor = 'corImpar';	
			}		
     		print('<tr class="'.$cor.'">
			         <td>'.$colunas[0].'</td>
			         <td>'.$colunas[1].'</td>
			         <td>'.$colunas[2].'</td>
			         <td>'.$colunas[3].'</td>
			       </tr>');

  		}
	}
?>
	  <tr><td colspan="4">X contato(s) listado(s)</td></tr>
    </table>
  </section>
<?php
	$rodape = file_get_contents("rodape.html");
	print($rodape);
?>