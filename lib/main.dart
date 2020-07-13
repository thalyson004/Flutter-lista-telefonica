import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/contactslist.dart';
import 'package:listatelefonicalimoeiro/contacts/export.dart';
import 'package:flutter/services.dart';
import 'screens/load.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
      ],
    );

    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Load(),
        '/home': (context) => Home(),
        //Entregas
        '/agua': (context) => ContactList(
              myList: agua,
              img: 'agua.png',
              title: 'Água',
            ),
        '/refeicao': (context) => ContactList(
              myList: refeicao,
              img: 'refeicao.png',
              title: 'Refeições',
            ),
        '/comidarapida': (context) => ContactList(
              myList: comidarapida,
              img: 'comidarapida.png',
              title: 'Comida Rápida',
            ),
        '/gas': (context) => ContactList(
              myList: gas,
              img: 'gas.png',
              title: 'Gás',
            ),
        '/farmacia': (context) => ContactList(
              myList: farmacia,
              img: 'farmacia.png',
              title: 'Farmácia',
            ),
        '/padaria': (context) => ContactList(
              myList: padaria,
              img: 'padaria.png',
              title: 'Padaria',
            ),

        //Serviços
        '/faxina': (context) => ContactList(
              myList: faxina,
              img: 'faxina.png',
              title: 'Faxina',
            ),
        '/costureira': (context) => ContactList(
              myList: costureira,
              img: 'costureira.png',
              title: 'Costureira',
            ),
        '/pedreiro': (context) => ContactList(
              myList: pedreiro,
              img: 'pedreiro.png',
              title: 'Pedreiro',
            ),
        '/pintor': (context) => ContactList(
              myList: pintor,
              img: 'pintor.png',
              title: 'Pintor',
            ),
        '/mecanico': (context) => ContactList(
              myList: mecanico,
              img: 'mecanico.png',
              title: 'Mecânico',
            ),
        '/cabelereiro': (context) => ContactList(
              myList: cabelereiro,
              img: 'cabelereiro.png',
              title: 'Cabelereiro',
            ),
        // TODO: Alterar cores do gás
        // TODO: Adicionar comida rápida
        // TODO: Adicionar gás
        // TODO: Adicionar farmácia
        // TODO: Adicionar Padaria
      },
    );
  }
}
