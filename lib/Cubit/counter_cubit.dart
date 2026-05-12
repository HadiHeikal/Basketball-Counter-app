import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_state.dart';

enum Team { teamA, teamB }

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInit());

  void teamIncrement(Team team, int amount) {
    if (team == Team.teamA) {
      emit(state.copyWith(counterA: state.counterA + amount));
    } else if (team == Team.teamB) {
      emit(state.copyWith(counterB: state.counterB + amount));
    }
  }

  void teamDecrement(Team team, int amount) {
    if (team == Team.teamA) {
      emit(state.copyWith(counterA: state.counterA - amount));
    } else if (team == Team.teamB) {
      emit(state.copyWith(counterB: state.counterB - amount));
    }
  }

  void resetAll() {
    emit(CounterState(counterA: 0, counterB: 0));
  }
}