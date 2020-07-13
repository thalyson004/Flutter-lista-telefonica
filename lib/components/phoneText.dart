import 'package:flutter/material.dart';

class PhoneText extends StatelessWidget {
  const PhoneText({
    Key key,
    @required this.phone,
    @required this.icon,
    @required this.iconColor,
  }) : super(key: key);

  final String phone;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: iconColor,
          size: 20.0,
        ),
        SizedBox(
          width: 10,
        ),
        Text(phone),
      ],
    );
  }
}
