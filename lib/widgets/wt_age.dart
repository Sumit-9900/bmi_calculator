import 'package:flutter/material.dart';

class Weight0Age extends StatefulWidget {
  const Weight0Age({super.key});

  @override
  State<Weight0Age> createState() => _Weight0AgeState();
}

class _Weight0AgeState extends State<Weight0Age> {
  int weight = 55;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 170.0,
          width: 170.0,
          margin: const EdgeInsets.only(
            left: 20.0,
            right: 10.0,
            top: 10.0,
            bottom: 20.0,
          ),
          decoration: BoxDecoration(
            color: const Color.fromARGB(60, 22, 86, 197),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 1.0),
                child: Text(
                  'WEIGHT',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Color.fromARGB(184, 255, 255, 255),
                  ),
                ),
              ),
              Text(
                weight.toString(),
                style: const TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(184, 255, 255, 255),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        weight++;
                      });
                    },
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(128, 255, 255, 255),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        weight--;
                      });
                    },
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(128, 255, 255, 255),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.remove,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 170.0,
          width: 170.0,
          margin: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 10.0,
            bottom: 20.0,
          ),
          decoration: BoxDecoration(
            color: const Color.fromARGB(60, 22, 86, 197),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 1.0),
                child: Text(
                  'AGE',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Color.fromARGB(184, 255, 255, 255),
                  ),
                ),
              ),
              Text(
                age.toString(),
                style: const TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(184, 255, 255, 255),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        age++;
                      });
                    },
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(128, 255, 255, 255),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        age--;
                      });
                    },
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(128, 255, 255, 255),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.remove,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
