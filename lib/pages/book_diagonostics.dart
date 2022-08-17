import 'package:flutter/material.dart';

class BookDiagonosticsPage extends StatelessWidget {
  const BookDiagonosticsPage({Key? key}) : super(key: key);

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
                  "assets/images/diagonostics.jpg",
                  height: 300,
                  width: 300,
                ),
              ),
              const Text(
                "Book Diagonostic",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  'Search and book diagonostic\n                         test'),
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
