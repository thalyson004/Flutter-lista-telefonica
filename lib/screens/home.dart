import 'package:flutter/material.dart';
import 'package:listatelefonicalimoeiro/components/mybottom.dart';
import 'package:listatelefonicalimoeiro/constants.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista telefónica'),
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton<String>(
            icon: Icon(Icons.more_vert),
            itemBuilder: (context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: '1',
                child: Text('Contato'),
              ),
            ],
            onSelected: (value) {
              print(value);
              if (value == '1') {
                Alert(
                  context: context,
                  type: AlertType.none,
                  title: 'Contato',
                  content: Column(
                    children: <Widget>[
                      Text(
                        "Esse aplicativo foi desenvolvido com objetivo educacional.\n\nÉ livre de anúncios e aberto para críticas e sugestões.\n\nPara sugerir atualizações, como novas funcionalidades ou novos contatos, nos envie email.\n\nemail: binador004@gmail.com",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  buttons: [],
                  style: AlertStyle(
                    animationDuration: Duration(milliseconds: 500),
                    animationType: AnimationType.grow,
                  ),
                ).show();
              }
            },
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            myText('Entregas', 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MyBottom(
                  image: 'images/agua.png',
                  route: '/agua',
                  name: 'Água',
                ),
                MyBottom(
                  image: 'images/refeicao.png',
                  route: '/refeicao',
                  name: 'Refeições',
                ),
                MyBottom(
                  image: 'images/comidarapida.png',
                  route: '/comidarapida',
                  name: 'Comida Rápida',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MyBottom(
                  image: 'images/gas.png',
                  route: '/gas',
                  name: 'Gás',
                ),
                MyBottom(
                  image: 'images/farmacia.png',
                  route: '/farmacia',
                  name: 'Farmácia',
                ),
                MyBottom(
                  image: 'images/padaria.png',
                  route: '/padaria',
                  name: 'Padaria',
                ),
              ],
            ),
            myText('Serviços', 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MyBottom(
                  image: 'images/faxina.png',
                  route: '/water',
                  name: 'Faxina',
                ),
                MyBottom(
                  image: 'images/sewing.png',
                  route: '/food',
                  name: 'Costureira',
                ),
                MyBottom(
                  image: 'images/pedreiro.png',
                  route: '/food',
                  name: 'Pedreiro',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MyBottom(
                  image: 'images/wrench.png',
                  route: '/water',
                  name: 'Mecânico',
                ),
                MyBottom(
                  image: 'images/pintor.png',
                  route: '/food',
                  name: 'Pintor',
                ),
                MyBottom(
                  image: 'images/cabelereiro.png',
                  route: '/cabelereiro',
                  name: 'Cabelereiro',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/*
* Serviços
* Comida
* Supermecados
* Farmácias
* */
