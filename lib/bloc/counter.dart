import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() async {
    emit(state + 1);
  }

  void decrement() async {
    emit(state - 1);
  }
}