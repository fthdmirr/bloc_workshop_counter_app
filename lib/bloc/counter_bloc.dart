import 'package:counter_app/bloc/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<ArttirEvent>((event, emit) {
      emit(state + 1);
    });
    on<AzaltEvent>((event, emit) {
      emit(state - 1);
    });
  }
}
