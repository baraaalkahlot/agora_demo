import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class PasswordVisibilityEvent extends Equatable {
  // Passing class fields in a list to the Equatable super class
  const PasswordVisibilityEvent([List props = const []]) : super();
}

class VisibilityChanged extends PasswordVisibilityEvent {
  final bool isVisible;

  const VisibilityChanged({required this.isVisible}) : super();

  @override
  List<Object> get props => [isVisible];
}
