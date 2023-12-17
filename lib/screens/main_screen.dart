import 'package:bmi_calculator_2/screens/calculate_screen.dart';
import 'package:bmi_calculator_2/widgets/gender.dart';
import 'package:bmi_calculator_2/widgets/height.dart';
import 'package:bmi_calculator_2/widgets/wt_age.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Gender(),
            const SizedBox(
              height: 10.0,
            ),
            const Height(),
            const SizedBox(
              height: 10.0,
            ),
            const Weight0Age(),
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
                    'CALCULATE',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const CalculateScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
