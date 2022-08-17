import 'package:flutter/material.dart';

class BookAppointmentPage extends StatelessWidget {
  const BookAppointmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: Image.asset(
                  "assets/images/appointment1.jpg",
                  height: 300,
                  width: 300,
                ),
              ),
              const Text(
                "Book Appointment",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  'Book an appointment with a\n                right doctor'),
              const SizedBox(
                height: 150,
              ),
              Container(
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.purpleAccent),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          primary: Colors.white),
                      child: const Text(
                        'Next',
                        style: TextStyle(color: Colors.purple),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
