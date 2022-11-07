import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'detail_screen_event.dart';
part 'detail_screen_state.dart';

class DetailScreenBloc extends Bloc<DetailScreenEvent, DetailScreenState> {
  DetailScreenBloc() : super(DetailScreenInitial()) {
    on<DetailScreenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
