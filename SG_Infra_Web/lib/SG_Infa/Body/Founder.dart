import 'package:flutter/material.dart';

class Founder extends StatelessWidget {
  const Founder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 60,
        ),
        Text(
          "Our Founder",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 35,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 40,
          width: 300,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 7, 35, 63),
              borderRadius: BorderRadius.circular(20)),
          child: Text(
            "Xyz",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 60,
        ),
      ],
    );
  }
}
