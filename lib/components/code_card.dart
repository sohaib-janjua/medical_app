import 'package:flutter/material.dart';

class CodeCard extends StatelessWidget {
  const CodeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70, right: 70, top: 20, bottom: 30),
      child: Row(
        children: [
          Flexible(
              child: TextFormField(
            keyboardType: TextInputType.number,
          )),
          const SizedBox(
            width: 10,
          ),
          Flexible(
              child: TextFormField(
            keyboardType: TextInputType.number,
          )),
          const SizedBox(
            width: 10,
          ),
          Flexible(
              child: TextFormField(
            keyboardType: TextInputType.number,
          )),
          const SizedBox(
            width: 10,
          ),
          Flexible(
              child: TextFormField(
            keyboardType: TextInputType.number,
          )),
          const SizedBox(
            width: 10,
          ),
          Flexible(
              child: TextFormField(
            keyboardType: TextInputType.number,
          )),
          const SizedBox(
            width: 10,
          ),
          Flexible(
              child: TextFormField(
            keyboardType: TextInputType.number,
          )),
        ],
      ),
    );
  }
}
