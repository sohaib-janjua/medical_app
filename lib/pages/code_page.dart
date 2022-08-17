import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/asterisks.dart';
import '../components/code_card.dart';

class CodePage extends StatelessWidget {
  const CodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.xmark))),
            const Center(
                child: Text(
              "Enter Code",
              style: TextStyle(fontSize: 17),
            )),
            const SizedBox(
              height: 20,
            ),
            const Asterisks(),
            const SizedBox(
              height: 30,
            ),
            Text(
              "We have sent you an SMS on +92 3081060364 \n                 with 6 digit verification code.",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.grey),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 8, bottom: 8, left: 18, right: 18),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.white,
                elevation: 10,
                child: Column(
                  children: [
                    const CodeCard(),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 25),
                      child: SizedBox(
                          height: 50,
                          width: 250,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.blue.shade700,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              onPressed: () {},
                              child: const Text("Submit"))),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Did not receive the code?"),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {},
                    child: Text(
                      "Re-send",
                      style: TextStyle(color: Colors.blue.shade700),
                    )),
                InkWell(
                    onTap: () {},
                    child: Text("Get a call now",
                        style: TextStyle(color: Colors.blue.shade700)))
              ],
            )
          ],
        ),
      )),
    );
  }
}
