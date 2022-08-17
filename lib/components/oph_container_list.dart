import 'package:flutter/material.dart';

class OphContainerList extends StatelessWidget {
  const OphContainerList({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
          child: Text(title),
        ),
      ),
    );
  }
}
