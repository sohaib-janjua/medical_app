import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Asterisks extends StatelessWidget {
  const Asterisks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          FontAwesomeIcons.asterisk,
          size: 15,
          color: Colors.green,
        ),
        SizedBox(
          width: 5,
        ),
        Icon(
          FontAwesomeIcons.asterisk,
          size: 15,
          color: Colors.green,
        ),
        SizedBox(
          width: 5,
        ),
        Icon(
          FontAwesomeIcons.asterisk,
          size: 15,
          color: Colors.green,
        ),
        SizedBox(
          width: 5,
        ),
        Icon(
          FontAwesomeIcons.asterisk,
          size: 15,
          color: Colors.green,
        ),
        SizedBox(
          width: 5,
        ),
        Icon(
          FontAwesomeIcons.asterisk,
          size: 15,
          color: Colors.green,
        ),
        SizedBox(
          width: 5,
        ),
        Icon(
          FontAwesomeIcons.asterisk,
          size: 15,
          color: Colors.green,
        ),
      ],
    );
  }
}
