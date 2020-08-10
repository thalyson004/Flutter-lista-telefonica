import 'package:flutter/material.dart';
import 'package:listatelefonicalimoeiro/constants.dart';

class Load extends StatefulWidget {
  @override
  _LoadState createState() => _LoadState();
}

class _LoadState extends State<Load> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(milliseconds: 5000),
      () {
        Navigator.pushReplacementNamed(context, '/home');
      },
    );
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Icon(
              Icons.info,
              color: Colors.blue,
              size: kwidth(context) * 0.5,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'Os desenvolvedores não se responsabilizam por negociações realizadas com os contatos fornecidos.\n\nEste aplicativo apenas disponibliza contatos comerciais da cidade de Limoeiro do Norte-Ce.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
