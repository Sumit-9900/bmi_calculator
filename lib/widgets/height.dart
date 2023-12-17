import 'package:flutter/material.dart';

class Height extends StatefulWidget {
  const Height({super.key});

  @override
  State<Height> createState() => _HeightState();
}

class _HeightState extends State<Height> {
  double slidervalue = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.0,
      width: double.infinity,
      margin: const EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 20.0,
        bottom: 20.0,
      ),
      decoration: BoxDecoration(
        color: const Color.fromARGB(60, 22, 86, 197),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              'HEIGHT',
              style: TextStyle(
                fontSize: 25.0,
                color: Color.fromARGB(184, 255, 255, 255),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text(
              '180cm',
              style: TextStyle(
                fontSize: 45.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(184, 255, 255, 255),
              ),
            ),
          ),
          Slider(
            value: slidervalue,
            onChanged: (value) {
              setState(() {
                slidervalue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
