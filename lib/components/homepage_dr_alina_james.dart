import 'package:flutter/material.dart';

class DrAlinaJames extends StatelessWidget {
  const DrAlinaJames({
    Key? key,
    required this.name,
    required this.study,
    required this.ratings,
    required this.image,
  }) : super(key: key);

  final String name;
  final String study;
  final String ratings;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Positioned(
          top: 28,
          child: Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 40, left: 15, right: 15, bottom: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(name),
                  Text(
                    study,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellowAccent,
                      ),
                      Text(ratings,
                          style: Theme.of(context).textTheme.bodySmall)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 30,
          right: 30,
          child: CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(image),
          ),
        )
      ],
    );
  }
}
