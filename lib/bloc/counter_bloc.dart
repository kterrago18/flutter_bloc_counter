import 'package:bloc/bloc.dart';

abstract class CounterEvent {}

class CounterIncrementPressed implements CounterEvent {}

class CounterDecrementPressed implements CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementPressed>((event, emit) => emit(state + 1));
    on<CounterDecrementPressed>((event, emit) => emit(state - 1));
  }
}
