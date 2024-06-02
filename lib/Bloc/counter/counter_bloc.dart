

import 'package:flutter_application_1/Bloc/counter/counter_events.dart';
import 'package:flutter_application_1/Bloc/counter/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent , CounterState>{

  CounterBloc() : super(const CounterState()){
    on<IncrementCounter>(_increment);
    on<DecrementCounter>(_decrement);
    on<SwitchEvent>(_changeSwitchButton);
  }

  void _increment(IncrementCounter event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter:  state.counter+ 1));
  }

  void _decrement(DecrementCounter event, Emitter<CounterState> emit) {
    emit(
      state.copyWith(counter: state.counter - 1),
    );
  }

  void _changeSwitchButton(SwitchEvent event, Emitter<CounterState> emit) {
    emit(
      state.copyWith(isSwitchOn: !state.isSwitchOn),
    );
  }
}