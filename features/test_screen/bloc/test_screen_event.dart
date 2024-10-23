part of 'test_screen_bloc.dart';

abstract class TestBlocEvent {
  static TestBlocEvent refetch() => _RefetchTestBlocEvent();

  static TestBlocEvent updateToServer() => _UpdateToServerTestBlocEvent();
}

class _RefetchTestBlocEvent extends TestBlocEvent {}

class _UpdateToServerTestBlocEvent extends TestBlocEvent {}
