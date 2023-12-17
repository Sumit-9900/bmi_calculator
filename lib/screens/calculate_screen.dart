import 'package:flutter/material.dart';

class CalculateScreen extends StatelessWidget {
  const CalculateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(
            child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            color: const Color.fromARGB(60, 22, 86, 197),
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'NORMAL',
                  style: TextStyle(
                    color: Color.fromARGB(255, 158, 218, 160),
                    fontWeight: FontWeight.w500,
                    fontSize: 23.0,
                  ),
                ),
                Text(
                  '18.5',
                  style: TextStyle(
                    color: Color.fromARGB(166, 255, 255, 255),
                    fontWeight: FontWeight.w500,
                    fontSize: 130.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'You Have A Normal Body. Good Job',
                    style: TextStyle(
                      color: Color.fromARGB(166, 255, 255, 255),
                      fontWeight: FontWeight.w500,
                      fontSize: 28.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            child: Container(
              height: 70.0,
              width: double.infinity,
              color: const Color.fromARGB(255, 103, 185, 106),
              margin: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: const Center(
                child: Text(
                  'Re-CALCULATE',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
