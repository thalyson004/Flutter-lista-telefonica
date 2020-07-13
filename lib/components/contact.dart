import 'package:flutter/material.dart';
import 'package:listatelefonicalimoeiro/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'phoneText.dart';

class Contact extends StatelessWidget {
  Contact({this.name, this.location, this.whatsapp, this.phone});

  final String name;
  final String whatsapp;
  final String location;
  final String phone;

  Widget build(BuildContext context) {
    print(name);
    print(whatsapp);
    print(location);
    print(phone);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: kheight(context) * 0.2,
        child: Card(
          color: Colors.white,
          elevation: 10,
          shape: kContactBottomShape,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                if (name != null)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      name,
                      style: kContactNameStyle,
                    ),
                  ),
                if (location != null)
                  Row(
                    children: <Widget>[
                      Text(location),
                    ],
                  ),
                if (whatsapp != null)
                  SizedBox(
                    height: 30,
                    child: Padding(
                      padding: kPhonePadding,
                      child: FlatButton(
                        color: Colors.greenAccent.withAlpha(100),
                        shape: kPhoneBottomShape,
                        onPressed: () async {
                          var whatsappUrl = "whatsapp://send?phone=$whatsapp";
                          await canLaunch(whatsappUrl)
                              ? launch(whatsappUrl)
                              : print(
                                  "open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
                        },
                        child: PhoneText(
                          phone: whatsapp,
                          icon: FontAwesomeIcons.whatsapp,
                          iconColor: Colors.green,
                        ),
                      ),
                    ),
                  ),
                if (phone != null)
                  SizedBox(
                    height: 30,
                    child: Padding(
                      padding: kPhonePadding,
                      child: Material(
                        color: Colors.lightBlueAccent.withOpacity(0.6),
//                          elevation: 5,
                        child: FlatButton(
                          shape: kPhoneBottomShape,
                          onPressed: () async {
                            var phoneUrl = "tel:$phone";
                            await canLaunch(phoneUrl)
                                ? launch(phoneUrl)
                                : print("Não conseguiu ligar");
                          },
                          child: PhoneText(
                            phone: phone,
                            icon: Icons.phone,
                            iconColor: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
