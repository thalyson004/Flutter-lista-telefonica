import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class MyBottom extends StatelessWidget {
  MyBottom({this.route, @required this.image, this.name});

  final String route;
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        borderOnForeground: true,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(
            width: 2,
            color: Colors.lightBlueAccent,
          ),
        ),
        child: FlatButton(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(2, 8, 2, 2),
            child: Column(
              children: <Widget>[
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 30,
                  child: Center(
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, route);
          },
        ),
      ),
    );
  }
}
