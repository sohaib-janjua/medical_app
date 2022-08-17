import 'package:flutter/material.dart';

class AwesomeDropdown extends StatefulWidget {
  const AwesomeDropdown({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AwesomeDropdownState createState() => _AwesomeDropdownState();
}

class _AwesomeDropdownState extends State<AwesomeDropdown> {
  final List<String> textList = [
    "Depalpur",
    "Okara",
    "Renala Khurd",
    "Faisalabad"
  ];
  String? _currentItemSelected;

  @override
  void initState() {
    super.initState();
    _currentItemSelected = textList[0];
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      itemBuilder: (context) {
        return textList.map((str) {
          return PopupMenuItem(
            value: str,
            child: Text(str),
          );
        }).toList();
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            _currentItemSelected!,
            style: const TextStyle(color: Colors.white),
          ),
          const Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
          ),
        ],
      ),
      onSelected: (v) {
        setState(() {
          _currentItemSelected = v;
        });
      },
    );
  }
}
