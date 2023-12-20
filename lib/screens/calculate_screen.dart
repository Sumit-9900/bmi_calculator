import 'package:bmi_calculator_2/provider/height_provider.dart';
import 'package:bmi_calculator_2/provider/weight_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalculateScreen extends ConsumerWidget {
  const CalculateScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weight = ref.watch(weightprovider);
    final height = ref.watch(heightprovider);
    String text1 = '';
    String text2 = '';

    final result = (weight / ((height / 100) * (height / 100)));

    if (result <= 18.5) {
      text1 = 'Underweight';
      text2 = 'You need to gain weight.';
    } else if (result <= 24.9) {
      text1 = 'Healthy Weight';
      text2 = 'You have a perfect body.';
    } else if (result <= 29.9) {
      text1 = 'Overweight';
      text2 = 'You need to loose weight';
    } else {
      text1 = 'Obesity';
      text2 = 'You need to loose weight more';
    }

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
            height: 500.0,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 15.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(60, 22, 86, 197),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text1,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 158, 218, 160),
                    fontWeight: FontWeight.w500,
                    fontSize: 32.0,
                  ),
                ),
                Text(
                  result.toStringAsFixed(1),
                  style: const TextStyle(
                    color: Color.fromARGB(166, 255, 255, 255),
                    fontWeight: FontWeight.w500,
                    fontSize: 130.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    text2,
                    style: const TextStyle(
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
