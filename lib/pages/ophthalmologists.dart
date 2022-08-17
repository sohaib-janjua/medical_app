import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/dropdown_homepage.dart';
import '../components/oph_container_list.dart';

class Ophthalmologists extends StatelessWidget {
  const Ophthalmologists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(
          height: size.height * 0.35,
          child: Stack(
            children: [
              Container(
                height: 150,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.blue.shade700,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
              ),
              Positioned(
                top: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                    const Text(
                      "Ophthalmologist",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    const AwesomeDropdown()
                  ],
                ),
              ),
              //Page_container_row
              Positioned(
                top: 104,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SizedBox(
                    height: size.height * 0.08,
                    width: size.width,
                    child: Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          OphContainerList(
                            title: "Availability",
                          ),
                          OphContainerList(
                            title: "In Hospital",
                          ),
                          OphContainerList(
                            title: "Online Booking",
                          ),
                          OphContainerList(
                            title: "Online Tests",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
