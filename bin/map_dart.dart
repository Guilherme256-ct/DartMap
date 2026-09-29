// 1 - Declare um map de modo coerente para representar os estados do sudeste e suas respectivas siglas. 

// 2 - Imprima todas as siglas do map anterior.

// 3 - Imprima todos os estados (nome completo) do map anterior.

// 4 - Imprima todas as siglas e seus respectivos estados no seguinte formato:
	
// 	UF			Sigla
// São Paulo 		SP
// Rio de Janeiro		RJ
// etc

// 5 - Um filme tem as seguintes informações: título, ano de lançamento e gênero. Crie um map para armazenar as informações de um filme. Cada informação será uma chave : valor. Exemplo chave titulo, valor Matrix.

// 6 - Imprima somente o título do filme.

// 7 - Crie uma estrutura que
// armazene 5 filmes a sua escolha. Dica: List de Map.

// 8 - Adicione mais filme à lista acima usando o método add da List

// 9 - Remova um filme da lista usando o método remove da List

// 10 - Imprima todas as informações do primeiro e do último filme

// 11 - Imprima somente o título e ano de lançamento do primeiro

// 12 - Imprima somente o título e gênero de todos os filmes utilizando laço de repetição

// 13 - Um programador possui as seguintes informações: nome, número do celular e as linguagens de programação que ele conhece. Crie um map para armazenar essas informações. Atenção a como vão declarar as linguagens, visto que podem ser várias. 

// 14 - Adicione mais uma linguagem de programação às linguagens já declaradas no exercício anterior.

// 15 - Altera a estrutura anterior para poder representar vários programadores. Represente 3 programadores

// 16 - Adicione mais um programador.

// 17 - Adicione mais uma linguagem de programação ao último programador adicionado

// 18 - Imprima todos programadores, mas somente seu nome e a primeira linguagem de programação de cada um.

void main(List<String> arguments) {
  atv15_18();
}

//coloquei para retornar map para reutilizar em outras atividades que utilizam este mesmo map.
Map <String,String> atv1(){
  Map <String,String> estados = {
  "SP":"São Paulo",
  "MG":"Minas Gerais",
  "RJ":"Rio de Janeiro",
  "ES":"Espírito Santo"
  };
  return estados;
}

void atv2(){
  Map <String,String> estados = atv1();
  for(String sigla in estados.keys){
    print(sigla);
  }
}

void atv3(){
  Map <String,String> estados= atv1();
  for(String estado in estados.values){
    print(estado);
  }
}

void atv4(){
  Map <String,String> estados= atv1();
  print("UF     Sigla");
  for(String sigla in estados.keys){
    print("${estados[sigla]}     $sigla");
  }
}

Map <String,String> atv5(){
  Map <String,String> filme= {
    "titulo":"Homem-Aranha: Um novo dia",
    "ano":"2026",
    "genero":"ação"
  };
  return filme;
}

void atv6(){
  Map <String,String> filme = atv5();
  print(filme["titulo"]);
}

//Criei esta função para facilitar a criação de maps filme
Map <String,String> funcao_Atv7(titulo,ano,genero){
  Map <String,String> filme= {
    "titulo":titulo,
    "ano":ano,
    "genero":genero
  };
  return filme;
}
void atv7_10(){
  //exercício 7
  List filmes=[];
  
  //exercício 8
  filmes.add(funcao_Atv7("Homem-Aranha: Um novo dia", "2026", "Ação"));
  filmes.add(funcao_Atv7("Mad Max: Fury Road", "2015", "Ação"));
  filmes.add(funcao_Atv7("Exterminador do futuro", "1984", "Ação"));
  filmes.add(funcao_Atv7("Pixels", "2015", "Ação e Comédia"));
  filmes.add(funcao_Atv7("Homem-Aranha: Através do Aranha-Verso", "2023", "Ação"));
  
  //exercício 9
  filmes.remove(filmes[2]); //removendo o filme exterminador do futuro

  //exercício 10
  print("Primeiro filme:");
  for(String x in filmes[0].values){
    print(x);
  }
  print("");
  print("Último filme:");
  for(String x in filmes[filmes.length-1].values){
    print(x);
  }
}
void atv11(){
  //não reutilizei o exercicio 7 e 8 por pregriça e só copiei eles
  //utilizando mais linhas que o necessário
  List filmes=[];

  filmes.add(funcao_Atv7("Homem-Aranha: Um novo dia", "2026", "Ação"));
  filmes.add(funcao_Atv7("Mad Max: Fury Road", "2015", "Ação"));
  filmes.add(funcao_Atv7("Exterminador do futuro", "1984", "Ação"));
  filmes.add(funcao_Atv7("Pixels", "2015", "Ação e Comédia"));
  filmes.add(funcao_Atv7("Homem-Aranha: Através do Aranha-Verso", "2023", "Ação"));

  print("Primeiro filme da lista: ${filmes[0]['titulo']} ${filmes[0]['ano']}");
  print("Último filme da lista: ${filmes[filmes.length-1]['titulo']} ${filmes[filmes.length-1]['ano']}");

}

void atv12(){
  List filmes=[];

  filmes.add(funcao_Atv7("Homem-Aranha: Um novo dia", "2026", "Ação"));
  filmes.add(funcao_Atv7("Mad Max: Fury Road", "2015", "Ação"));
  filmes.add(funcao_Atv7("Exterminador do futuro", "1984", "Ação"));
  filmes.add(funcao_Atv7("Pixels", "2015", "Ação e Comédia"));
  filmes.add(funcao_Atv7("Homem-Aranha: Através do Aranha-Verso", "2023", "Ação"));

  for(int index=0;index<filmes.length;index++){
    print("título: ${filmes[index]['titulo']} | gênero: ${filmes[index]['genero']}");
  }
}

void atv13_14(){
  //atividade 13
  Map programador={
    'nome':'Guilherme',
    'numero_celular':'123456789',
    'linguagens':['C#','python']
  };

  //atividade 14
  programador['linguagens']=programador['linguagens'].add('dart');

}

void atv15_18(){
  //atividade 15
  List programadores=[
    {'nome':'Guilherme','numero_celular':'123456789','linguagens':['C#','python','dart']},
    {'nome':'Jão','numero_celular':'2222222','linguagens':['java','C#']},
    {'nome':'Pão','numero_celular':'9999999','linguagens':['python','basic']}
  ];
  //atividade 16
  programadores.add({'nome':'Breno','numero_celular':'56182781','linguagens':['python','SQL']});

  //atividade 17
  programadores[programadores.length-1]['linguagens'].add('java');

  //atividade 18
  for(Map programador in programadores){
    print("nome: ${programador['nome']} | primeira linguagem: ${programador['linguagens'][0]}");
  }
}