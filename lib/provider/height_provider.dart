import 'package:flutter_riverpod/flutter_riverpod.dart';

class HeightNotifier extends StateNotifier<double> {
  HeightNotifier() : super(0);

  void updateSlider(double value) {
    state = value;
  }
}

final heightprovider = StateNotifierProvider<HeightNotifier, double>(
  (ref) => HeightNotifier(),
);
