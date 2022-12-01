import 'package:appcopadomundo/selecoes_com_parametros.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AppCopaDoMundo());
}

class AppCopaDoMundo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Copa do Mundo - 2022'),
        ),
        //Lista que chama a classe TimesDaCopa no qual contém os Widgets que exibirão os times
        //Utilizado o ListView para evitar o OverFlow e para utilização da Scrollagem
        body: SelecoesComParametros(),
      ),
    );
  }
}

//Utilizado o StateFulWidget pois há uma mudança de estado, não é uma tela estática, devido a isso é necessário o Stful
class TimesDaCopa extends StatefulWidget {
  //Variável que guardará o nome do Time, passado como parâmetro quando a classe é chamada
  final String nomeDoTime;
  final String logoDoTime;
  final int numeroDeTitulos;
  //Rotina de inicialização do nome do time
  const TimesDaCopa(this.nomeDoTime, this.logoDoTime, this.numeroDeTitulos,
      {Key? key})
      : super(key: key);

  @override
  _TimesDaCopaState createState() => _TimesDaCopaState();
}

class _TimesDaCopaState extends State<TimesDaCopa> {
  //Variável não é colocada após o Build pois a partir do Build executa o programa, caso fique ali, a variável será sempre zero
  //Quando é necessário guardar o valor de uma variável, é necessário deixar antes do Build
  int chancesDeTitulo = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      //Container principal da tela
      child: Container(
        //Stack: empilhará os Widgets
        child: Stack(
          children: [
            //Container que criará a divisória entre outros Containeres
            Container(
              color: Colors.red,
              height: 140,
            ),
            //Container que conterá os Widgets de Image, Text e Button, ou seja, os próximos Widgets serão dentro deste
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  //Widget que distribuirá horizontalmente a imagem, Text e Button
                  child: Row(
                    //Propriedade da Row que distribui o espaçamento entre os Widgets
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Container que conterá a imagem
                      Container(
                        color: Colors.white,
                        width: 100,
                        height: 100,
                        child: Image.network(
                          widget.logoDoTime,
                          fit: BoxFit.cover,
                        ),
                      ),
                      //Widget Column que distribuirá os widgets verticalmente
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Padding utilizado para ajustar as margens
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              //Nome do time
                              widget.nomeDoTime,
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          //Distribui os widgets horizontalmente, neste caso, as estrelas (vezes campeões) serão na horizontal
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 21,
                                //Utilização do operador ternário para definir a cor das estrelas
                                color: (widget.numeroDeTitulos >= 1
                                    ? Colors.orange.shade300
                                    : Colors.orange[50]),
                              ),
                              Icon(
                                Icons.star,
                                size: 21,
                                color: (widget.numeroDeTitulos >= 2
                                    ? Colors.orange.shade300
                                    : Colors.orange[50]),
                              ),
                              Icon(
                                Icons.star,
                                size: 21,
                                color: (widget.numeroDeTitulos >= 3
                                    ? Colors.orange.shade300
                                    : Colors.orange[50]),
                              ),
                              Icon(
                                Icons.star,
                                size: 21,
                                color: (widget.numeroDeTitulos >= 4
                                    ? Colors.orange.shade300
                                    : Colors.orange[50]),
                              ),
                              Icon(
                                Icons.star,
                                size: 21,
                                color: (widget.numeroDeTitulos >= 5
                                    ? Colors.orange.shade300
                                    : Colors.orange[50]),
                              ),
                            ],
                          ),
                        ],
                      ),
                      //Elevated button que irá ditar a chance de título do time
                      ElevatedButton(
                        onPressed: () {
                          //SetState utilizado para atualizar a chance de títulos quando Button ser pressionado
                          setState(() {
                            //Operador ternário utilizado para limitar a quantidade de chances de titulos em 10
                            chancesDeTitulo >= 0 && chancesDeTitulo <= 9
                                ? chancesDeTitulo++
                                : chancesDeTitulo == 9;
                          });
                        },
                        child: Icon(Icons.arrow_drop_up),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      //Container que conterá a barra de chances
                      child: Container(
                        child: LinearProgressIndicator(
                          value: chancesDeTitulo / 10,
                          color: Colors.white,
                        ),
                        width: 200,
                      ),
                    ),
                    //Ajuste de margem
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      //Text com a variável chancesDeTitulo, utilizando interpolação
                      child: Text(
                        'Chances de título: $chancesDeTitulo',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
