import 'package:flutter/material.dart';

class Medico extends StatelessWidget {
  const Medico({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink,
        body: Column(
          children: [
            Container(
              height: size.height * 0.51,
              width: size.width,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: Colors.blue.shade900,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.2), BlendMode.dstATop),
                      image:
                          const AssetImage("assets/images/medicalteam.jpg"))),
              child: const Center(
                child: Text("Medico",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            SizedBox(
              height: size.height * 0.45,
              width: size.width,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(
                    top: 50,
                    child: SizedBox(
                        height: 60,
                        width: 340,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(color: Colors.black26),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                primary: Colors.white),
                            child: const Text(
                              'Mobile Number',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ))),
                  ),
                  Positioned(
                    top: 130,
                    child: SizedBox(
                        height: 60,
                        width: 340,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(color: Colors.black26),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                primary: Colors.white),
                            child: const Text(
                              'Facebook',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.blue),
                            ))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Positioned(
                    top: 210,
                    child: SizedBox(
                        height: 60,
                        width: 340,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(color: Colors.black26),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                primary: Colors.white),
                            child: const Text(
                              'Google',
                              style: TextStyle(fontSize: 15, color: Colors.red),
                            ))),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Positioned(
                    bottom: 50,
                    child: Text(
                      "By Continuing, you agree to Terms & Conditions",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.grey),
                    ),
                  ),
                  Positioned(
                    bottom: -110,
                    right: -70,
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade900, shape: BoxShape.circle),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
