import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInitial()) {
    // todo

    on<CounterEvent>((event, emit) {
      //  todo

      if (event is IncreamentEvent) {
        counter++;
        emit(CounterValueChangedState(counter: counter));
      } else if (event is DecreamentEvent) {
        counter--;
        emit(CounterValueChangedState(counter: counter));
      } else {
        counter = 0;
        emit(CounterValueChangedState(counter: counter));
      }
    });
  }
}
