import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBloc<Event, State> extends Bloc<Event, State> {
  BaseBloc(State initialState) : super(initialState);

  void showLoading() {}

  void hideLoading() {}

  void showMessage(String message) {}

  void handleError(Object error, StackTrace stackTrace) {}

  @override
  Stream<State> mapEventToState(Event event) async* {
    try {
      yield* mapEventToStateHandler(event);
    } catch (error, stackTrace) {
      handleError(error, stackTrace);
    }
  }
  Stream<State> mapEventToStateHandler(Event event);
}
