import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Gender extends StatefulWidget {
  Gender({
    super.key,
    required this.text,
    required this.icon,
    required this.isMaleSelected,
    required this.isFemaleSelected,
  });
  final IconData icon;
  final String text;
  bool isMaleSelected;
  bool isFemaleSelected;

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  bool isButtonPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          // isButtonPressed = !isButtonPressed;
          widget.isMaleSelected = !widget.isMaleSelected;
          widget.isFemaleSelected = !widget.isFemaleSelected;
        });
      },
      child: Container(
        height: 160.0,
        width: 160.0,
        margin: const EdgeInsets.only(
          left: 20.0,
          right: 10.0,
          top: 20.0,
          bottom: 20.0,
        ),
        decoration: BoxDecoration(
          color: widget.isFemaleSelected
              ? const Color.fromARGB(60, 22, 86, 197)
              : const Color.fromARGB(57, 150, 179, 228),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              size: 85.0,
              color: widget.isFemaleSelected ? Colors.white70 : Colors.black87,
            ),
            Text(
              widget.text,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: widget.isFemaleSelected ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
