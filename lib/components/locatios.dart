import 'package:flutter/material.dart';

class Locations extends StatelessWidget {
  const Locations({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text(name),
          ),
        ],
      ),
    );
  }
}
