import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  const Gender({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 160.0,
          width: 160.0,
          margin: const EdgeInsets.only(
            left: 20.0,
            right: 10.0,
            top: 20.0,
            bottom: 20.0,
          ),
          decoration: BoxDecoration(
            color: const Color.fromARGB(60, 22, 86, 197),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.male,
                  size: 85.0,
                ),
                onPressed: () {},
                color: Colors.white70,
              ),
              const Text(
                'MALE',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        Container(
          height: 160.0,
          width: 160.0,
          margin: const EdgeInsets.only(
            left: 20.0,
            right: 10.0,
            top: 20.0,
            bottom: 20.0,
          ),
          decoration: BoxDecoration(
            color: const Color.fromARGB(60, 22, 86, 197),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.female,
                  size: 85.0,
                ),
                onPressed: () {},
                color: Colors.white70,
              ),
              const Text(
                'FEMALE',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
