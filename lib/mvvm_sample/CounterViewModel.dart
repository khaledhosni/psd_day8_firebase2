import 'package:flutter/foundation.dart';
import 'package:psd_day8_firebase2/mvvm_sample/Counter.dart';

class CounterViewModel extends ChangeNotifier {
  Counter _counter = Counter(0);

  int get counterValue => _counter.value;

  void increment() {
    _counter.value++;
    notifyListeners(); // Notifies listeners (usually the UI) that the data has changed.
  }

  void decrement() {
    _counter.value--;
    notifyListeners();
  }
}
