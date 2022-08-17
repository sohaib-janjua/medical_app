import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              top: -220,
              right: -30,
              child: Container(
                height: 500,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.blue.shade700, shape: BoxShape.circle),
              ),
            ),
            const Positioned(
              top: 130,
              child: Text(
                "Medico",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 340,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                          height: 60,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.black12)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/svg/moble.svg"),
                              const SizedBox(
                                width: 15,
                              ),
                              const Text(
                                "Mobile Number",
                              )
                            ],
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                          height: 60,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.black12)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                FontAwesomeIcons.facebook,
                                color: Colors.blue,
                                size: 20,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Facebook",
                              )
                            ],
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                          height: 60,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.black12)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                FontAwesomeIcons.google,
                                color: Colors.red,
                                size: 20,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Google",
                              )
                            ],
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "By continuing, you agree to Terms & Conditions",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.grey),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: -100,
              right: -80,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.blue.shade700, shape: BoxShape.circle),
              ),
            )
          ],
        ));
  }
}
