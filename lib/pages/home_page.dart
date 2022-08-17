import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/dropdown_homepage.dart';
import '../components/home_list_horizontal.dart';
import '../components/homepage_container_row.dart';
import '../components/homepage_dr_alina_james.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(children: [
        SizedBox(
          height: size.height * 0.35,
          child: Stack(
            children: [
              Container(
                height: 170,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.blue.shade700,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
              ),
              Positioned(
                top: 80,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "Medico",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 180,
                      ),
                      AwesomeDropdown()
                    ],
                  ),
                ),
              ),
              const HomePageContainerRow(),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: size.height * 0.26,
          child: const HomeListHorizontal(),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text("Doctors nearby you"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 180),
              child: InkWell(
                  onTap: () {},
                  child: Text(
                    "See All",
                    style: TextStyle(color: Colors.blue.shade700),
                  )),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: size.height * 0.25,
                  width: 170,
                  child: const DrAlinaJames(
                    name: "Dr. Alina James",
                    study: "BSc, MBBS, DDVL, MD-\n Dermitologist",
                    ratings: "4.2",
                    image: "assets/images/alina_james.jpg",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: size.height * 0.25,
                  width: 170,
                  child: const DrAlinaJames(
                    name: "Dr. Senila Fisty",
                    study: "BSc, MBBS, DDVL, MD-\n Dermitologist",
                    ratings: "3.0",
                    image: "assets/images/senila_fisty.jpg",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: size.height * 0.25,
                  width: 170,
                  child: const DrAlinaJames(
                    name: "Dr. Steve Robert",
                    study: "BSc, MBBS, DDVL, \n",
                    ratings: "3.6",
                    image: "assets/images/steve_robert.jpg",
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/svg/home_icon.svg"),
                label: "Home"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/svg/chat_icon.svg"),
                label: "Chat"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/svg/account_icon.svg"),
                label: "Account"),
          ],
          onTap: (int? i) {},
        ),
      ),
    );
  }
}
