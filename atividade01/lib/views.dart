import 'package:flutter/material.dart';
import 'components/biografia.dart';
import 'utils/constantes.dart';


Widget generateIsabelaView() {
  return generateBiografia(URL_FOTO_ISABELA, BIOGRAFIA_ISABELA);
}

Widget generateLarissaView() {
  return generateBiografia(URL_FOTO_LARISSA, BIOGRAFIA_LARISSA);
}

Widget generateProjetoView() {
  return Text("Nosso projeto consistirá num 'Contador de Calorias'. Nesse aplicativo, o usuário deverá fazer seu login fornecendo seu nome de usuário e senha, que deverão ser cadastradas previamente. Primeiramente, o usuário se deparará com uma tela onde terá duas opções: 'Cadastrar Novo Alimento' e 'Minha Contagem'. Ao clicar em 'Cadastrar Novo Alimento', o usuário poderá fazer esse cadastro forncendo o nome do alimento e seu valor calórico ao sistema. Ao clicar em 'Minha Contagem', o sistema exibirá a data, o nome do usuário, a quantidade máxima de calorias que o usuário pode ingerir diariamente, a quantidade de calorias ingerida durante o dia e, por fim, a quantidade de calorias que ele ainda pode ingerir. Haverá também um botão 'Adicionar', para que o usuário possa adicionar o que acabou de comer. Ao clicar em 'Adicionar', aparecerá uma tela com uma lista de alimentos e suas respectivas calorias. Para adicionar um alimento basta selecioná-lo e clicar em 'Adicionar'. Uma mensagem de sucesso retornará ao usuário. Ao voltar à tela principal, os valores estarão alterados. Todas as informações coletadas pelo sistema serão armazenadas num banco de dados. Este banco armazenará a tabela para os alimentos e suas respectivas calorias, a tabela para os usuários, onde cada um terá sua quantidade de calorias permitidas por dia e, por fim, uma tabela que servirá como um diário, mostrando a data e a quantidade de calorias ingeridas durante o decorrer dos dias. Este banco será construído na plataforma Firebase, que salva as informações no servidor.");
}