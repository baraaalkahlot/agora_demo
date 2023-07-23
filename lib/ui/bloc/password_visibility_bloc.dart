import 'package:flutter_bloc/flutter_bloc.dart';

import './bloc.dart';

class PasswordVisibilityBloc
    extends Bloc<PasswordVisibilityEvent, PasswordVisibilityState> {
  PasswordVisibilityBloc()
      : super(const PasswordVisibilityState(isVisible: false)) {
    on<VisibilityChanged>(_onVisibilityTriggered);
  }

  _onVisibilityTriggered(
      VisibilityChanged event, Emitter<PasswordVisibilityState> emit) async {
    emit(PasswordVisibilityState(isVisible: event.isVisible));
  }
}
