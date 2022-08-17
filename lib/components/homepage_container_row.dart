import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePageContainerRow extends StatelessWidget {
  const HomePageContainerRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 130,
      left: 30,
      right: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              SizedBox(
                height: 70,
                width: 70,
                child: Material(
                  elevation: 10,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(360),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset(
                      "assets/svg/doctor.svg",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Dotor",
                style: TextStyle(fontSize: 17),
              ),
              Text(
                "Search doctor \n around you",
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 70,
                width: 70,
                child: Material(
                  elevation: 10,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(360),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset(
                      "assets/svg/capsule.svg",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Medicines",
                style: TextStyle(fontSize: 17),
              ),
              Text(
                "Order Machine \n to home",
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 70,
                width: 70,
                child: Material(
                  elevation: 10,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(360),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset(
                      "assets/svg/diagonostic.svg",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Digonostic",
                style: TextStyle(fontSize: 17),
              ),
              Text(
                "Book test at \n Doorstep",
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ],
      ),
    );
  }
}
