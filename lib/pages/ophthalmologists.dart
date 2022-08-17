import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/dropdown_homepage.dart';
import '../components/oph_container_list.dart';
import '../components/ophthalmologist_main_card.dart';

class Ophthalmologists extends StatelessWidget {
  const Ophthalmologists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            height: size.height * 0.22,
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
          Column(
            children: [
              SizedBox(
                height: size.height * 0.42,
                width: size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    OphthalmologistMainCard(
                        size: size,
                        euros: "£500 onwards",
                        feedBack: "95 Feedback",
                        name: "Zean Ronen",
                        votes: "36 votes",
                        rating: "97%",
                        image: "assets/images/zean.jpg"),
                    OphthalmologistMainCard(
                        size: size,
                        euros: "£500 onwards",
                        feedBack: "95 Feedback",
                        name: "Zean Ronen",
                        votes: "36 votes",
                        rating: "97%",
                        image: "assets/images/zean.jpg"),
                  ],
                ),
              ),
              OphthalmologistMainCard(
                  size: size,
                  euros: "£700 onwards",
                  feedBack: "80 Feedback",
                  name: "Lica Anera",
                  votes: "356 votes",
                  rating: "98%",
                  image: "assets/images/lica_anera.jpg"),
            ],
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: SvgPicture.asset("assets/svg/oph_floating_button.svg"),
      ),
    );
  }
}
