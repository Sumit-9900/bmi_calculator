import 'package:flutter_riverpod/flutter_riverpod.dart';

class WeightNotifier extends StateNotifier<int> {
  WeightNotifier() : super(0);

  // void addwt() {
  //   state++;
  // }

  // void removewt() {
  //   state--;
  // }
}

final weightprovider = StateNotifierProvider<WeightNotifier, int>(
  (ref) => WeightNotifier(),
);
