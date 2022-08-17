import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/locatios.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          Stack(children: [
            Container(
              height: 120,
              width: size.height,
              decoration: BoxDecoration(
                  color: Colors.blue.shade700,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: const [
                      Icon(
                        FontAwesomeIcons.xmark,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Select your city",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Material(
                    elevation: 10,
                    borderRadius: BorderRadius.circular(30),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
                          border: InputBorder.none,
                          hintText: "Search here"),
                    )),
              ),
            )
          ]),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        "assets/svg/location.svg",
                      ),
                    )),
                const SizedBox(
                  width: 10,
                ),
                const Text("Use current location")
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: size.height,
              width: size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 0, bottom: 10),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: SvgPicture.asset("assets/svg/flag.svg"),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 25),
                            child: Text("India"),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    const Locations(
                      name: "Nagupur",
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    const Locations(
                      name: "Delhi NCR",
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    const Locations(
                      name: "Pune",
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    const Locations(
                      name: "Banglore",
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    const Locations(
                      name: "Hyderabad",
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    const Locations(
                      name: "Chennai",
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    const Locations(
                      name: "Gwoloir",
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    const Locations(
                      name: "Jaranwala",
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    const Locations(
                      name: "Tandla",
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
