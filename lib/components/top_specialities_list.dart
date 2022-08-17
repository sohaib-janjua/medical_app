import 'package:flutter/material.dart';

class TopSpecialitiesList extends StatelessWidget {
  const TopSpecialitiesList({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 1,
          )
        ],
      ),
    );
  }
}
