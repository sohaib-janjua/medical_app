import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OtpVerication extends StatelessWidget {
  const OtpVerication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                  onPressed: () {}, icon: const Icon(FontAwesomeIcons.xmark))),
          const SizedBox(
            height: 30,
          ),
          SvgPicture.asset("assets/svg/otp.svg"),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              "Enter your mobile number we will send \n             you the OTP to verify later",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.grey),
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 55, right: 55, top: 25, bottom: 20),
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            height: 45,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black26)),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(left: 7, bottom: 5),
                                  hintText: '+92',
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 45,
                          width: 195,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black26)),
                          child: Row(
                            children: [
                              Flexible(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.only(
                                          top: 7, left: 10),
                                      hintText: '03081060364',
                                      suffixIcon: Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: SvgPicture.asset(
                                          "assets/svg/tickbutton.svg",
                                        ),
                                      ),
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
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
          )
        ],
      )),
    );
  }
}
