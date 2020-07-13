import 'package:flutter/material.dart';
import 'package:listatelefonicalimoeiro/components/contact.dart';
import 'package:listatelefonicalimoeiro/constants.dart';
import 'package:listatelefonicalimoeiro/mycontact.dart';

List<Widget> buildList(List<MyContact> list) {
  List<Widget> myList = [];
  for (int i = 0; i < list.length; i++) {
    myList.add(
      Contact(
        name: list[i].name,
        location: list[i].location,
        whatsapp: list[i].whatsapp,
        phone: list[i].phone,
      ),
    );
  }
  return myList;
}

class ContactList extends StatelessWidget {
  @override
  ContactList({this.myList, this.img, this.title});

  final List<MyContact> myList;
  final String img;
  final String title;

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('images/$img'),
                  ),
                  Expanded(
                    child: myText(title, 30),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('images/$img'),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 50,
              endIndent: 50,
              color: Colors.black,
            ),
            Expanded(
              flex: 9,
              child: ListView(
                children: buildList(myList),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
