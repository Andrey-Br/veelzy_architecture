import 'package:flutter_bloc/flutter_bloc.dart';

part 'test_screen_event.dart';
part 'test_screen_state.dart';

class TestBloc extends Bloc<TestBlocEvent, TestBlocState> {
  TestBloc([TestBlocState? initialState]) : super(initialState ?? TestBlocState()) {
    on<_RefetchTestBlocEvent>((event, emit) {});
    on<_UpdateToServerTestBlocEvent>((event, emit) {});
  }

  void onButtonRefetch() {
    add(TestBlocEvent.refetch());
  }

  void onButtonUpdateServeer() {
    add(TestBlocEvent.refetch());
  }
}
