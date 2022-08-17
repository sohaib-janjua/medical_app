import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeListHorizontal extends StatelessWidget {
  const HomeListHorizontal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 380,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(top: 12, left: 8, bottom: 12),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SvgPicture.asset(
                    "assets/svg/frontpick.svg",
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          SizedBox(
            width: 380,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12, left: 5),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SvgPicture.asset(
                    "assets/svg/frontpick.svg",
                    fit: BoxFit.cover,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
