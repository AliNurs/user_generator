// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitCounter extends Cubit<CounterState> {
  CubitCounter() : super(CounterState(counterValue: 0, wasIncrement: false));

  void increment() => emit(
      CounterState(counterValue: state.counterValue + 1, wasIncrement: true));

  void decrement() {
    emit(CounterState(
        counterValue: state.counterValue - 1, wasIncrement: false));
  }
}

class CounterState {
  int counterValue;
   bool wasIncrement;
  CounterState({
    required this.counterValue,
    required this.wasIncrement,
  });
}
