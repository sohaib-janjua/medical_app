import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/zean_ronen.jpg"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
