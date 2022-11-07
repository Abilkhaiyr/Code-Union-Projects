import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:test_app/src/common/models/tokens_model.dart';

part 'log_in_event.dart';
part 'log_in_state.dart';

class LogInBloc extends Bloc<LogInEvent, LogInState> {
  Dio dio = Dio();
  LogInBloc() : super(LogInInitial());

  get tokensBox => null;
  // {
  //   on<LogInEvent>((event, emit) {
  //     // TODO: implement event handler
  //   });
  Stream<LogInState> mapEventToState(
    LogInEvent event,
  ) async* {
    // Проверка на текущий event
    if (event is LogInPressed) {
      // Кто-то нажал на кнопку Войти
      yield LogInLoading();
      try {
        Response response = await dio.post(
          'http://188.225.83.80:6719/api/v1/auth/login',
          data: {
            'email': event.email,
            'password': event.password,
          },
        );

        TokensModel tokensModel = TokensModel.fromJson(
          response.data['tokens'],
        );

        tokensBox.put('access', tokensModel.access);
        tokensBox.put('refresh', tokensModel.refresh);
        yield LogInLoaded();
      } on DioError {
        yield LogInFailed(message: 'Неправильный логин или пароль');
        rethrow;
      } catch (e) {
        yield LogInFailed(message: 'Произошла ошибка');
        rethrow;
      }
    }
  }
}
