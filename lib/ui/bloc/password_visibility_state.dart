import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class PasswordVisibilityState extends Equatable {
  final bool isVisible;

  const PasswordVisibilityState({
    required this.isVisible,
  }) : super();

  @override
  List<Object> get props => [isVisible];
}
