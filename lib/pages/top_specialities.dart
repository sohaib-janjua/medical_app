import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/top_specialities_list.dart';

class TopSpecialities extends StatelessWidget {
  const TopSpecialities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                        "Doctors",
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
          const Padding(
            padding: EdgeInsets.only(top: 35, left: 25, bottom: 0),
            child: Text("Top specialitis"),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
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
                      TopSpecialitiesList(
                        title: "Ophthalmologist",
                      ),
                      TopSpecialitiesList(
                        title: "Dermatologist",
                      ),
                      TopSpecialitiesList(
                        title: "Cardiologist",
                      ),
                      TopSpecialitiesList(
                        title: "Gastroenterologist",
                      ),
                      TopSpecialitiesList(
                        title: "Psychiatrist",
                      ),
                      TopSpecialitiesList(
                        title: "Ear-Nose-Throat(ENT) Specialist",
                      ),
                      TopSpecialitiesList(
                        title: "Gynecologist/Obstetrician",
                      ),
                      TopSpecialitiesList(
                        title: "Neurologist",
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
