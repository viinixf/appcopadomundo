

import 'package:flutter/cupertino.dart';

import 'main.dart';

class SelecoesComParametros extends StatelessWidget {
  const SelecoesComParametros({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          TimesDaCopa(
              'HOLANDA',
              'https://ae01.alicdn.com/kf/H07d877bfc5ff4d49b2494062e3de0ea8f/Vertical-90x150cm-nl-nld-holanda-nederland-holanda-bandeira.jpg_Q90.jpg_.webp',
              0),
               TimesDaCopa(
              'SENEGAL',
              'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Flag_of_Senegal.svg/255px-Flag_of_Senegal.svg.png',
              0),
               TimesDaCopa(
              'INGLATERRA',
              'https://static.todamateria.com.br/upload/ba/nd/bandeira_da_inglaterra_bb.jpg',
              1),
               TimesDaCopa(
              'ESTADOS UNIDOS',
              'https://img.freepik.com/fotos-gratis/bandeira-dos-estados-unidos-da-america_1401-253.jpg?w=2000',
              0),
               TimesDaCopa(
              'ARGENTINA',
              'https://s1.static.brasilescola.uol.com.br/be/conteudo/images/bandeira-argentina-55e5bb21570ca.jpg',
              2),
               TimesDaCopa(
              'POLÔNIA',
              'https://www.suapesquisa.com/uploads/site/bandeira_polonia_media.jpg',
              0),
               TimesDaCopa(
              'FRANÇA',
              'https://static.todamateria.com.br/upload/fr/an/frana_a.jpg',
              2),
               TimesDaCopa(
              'AUSTRÁLIA',
              'https://s2.static.brasilescola.uol.com.br/be/2022/10/bandeira-da-australia.jpg',
              0),
               TimesDaCopa('BRASIL',
              'https://www.gov.br/planalto/pt-br/conheca-a-presidencia/acervo/simbolos-nacionais/bandeira/bandeiragrande.jpg',
              5),
               TimesDaCopa(
              'PORTUGAL',
              'https://s1.static.brasilescola.uol.com.br/be/2022/10/bandeira-portugal-2.jpg',
              0),
               TimesDaCopa(
              'MARROCOS',
              'https://s3.static.brasilescola.uol.com.br/be/2022/11/bandeira-do-marrocos.jpg',
              0),
               TimesDaCopa(
              'CROÁCIA',
              'https://s3.static.brasilescola.uol.com.br/be/2022/10/bandeira-da-croacia.jpg',
              0),
              TimesDaCopa(
              'ESPANHA',
              'https://s2.static.brasilescola.uol.com.br/be/2022/02/bandeira-da-espanha.jpg',
              1),
              TimesDaCopa(
              'ALEMANHA',
              'https://s5.static.brasilescola.uol.com.br/be/2020/10/bandeira-da-alemanha.jpg',
              4),
        ],
      ),
    );
  }
}