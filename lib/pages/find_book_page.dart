import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/find_book_list.dart';

class FindBookPage extends StatelessWidget {
  const FindBookPage({Key? key}) : super(key: key);

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
                        "Find & Book",
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
                    color: Colors.white,
                    elevation: 10,
                    borderRadius: BorderRadius.circular(30),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
                          border: InputBorder.none,
                          hintText: "Doctors, specialities, clinics"),
                    )),
              ),
            )
          ]),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 25),
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
                    children: const [
                      FindBookList(
                        title: "Doctors",
                        subtitle: "Opthalmologist, Dermatologist, etc.",
                      ),
                      FindBookList(
                        title: "Dentists",
                        subtitle: "Dentist, Prosthodonist, etc.",
                      ),
                      FindBookList(
                        title: "Alternative Medicine Doctors",
                        subtitle: "Ayurveda, Homeopath, etc.",
                      ),
                      FindBookList(
                        title: "Therapists & Nutritionists",
                        subtitle: "Acupuncturist, Physiotherapist, etc.",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
