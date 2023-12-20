import 'package:bmi_calculator_2/provider/height_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Height extends ConsumerStatefulWidget {
  const Height({super.key});

  @override
  ConsumerState<Height> createState() => _HeightState();
}

class _HeightState extends ConsumerState<Height> {
  // double slidervalue = 0;
  @override
  Widget build(BuildContext context) {
    double slidervalue = ref.watch(heightprovider);
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
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              '${slidervalue.toStringAsFixed(0)} cm',
              style: const TextStyle(
                fontSize: 45.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(184, 255, 255, 255),
              ),
            ),
          ),
          Slider(
            value: slidervalue,
            min: 0,
            max: 250,
            onChanged: (value) {
              ref.watch(heightprovider.notifier).updateSlider(value);
            },
          ),
        ],
      ),
    );
  }
}
