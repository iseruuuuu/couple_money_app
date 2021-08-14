import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'register_screen_state.freezed.dart';

@freezed
abstract class RegisterScreenState with _$RegisterScreenState {
  const factory RegisterScreenState({
    @Default('') String exp,
  }) = _RegisterScreenState;
}

class RegisterScreenController extends StateNotifier<RegisterScreenState>
    with LocatorMixin {
  RegisterScreenController({
    required this.context,
  }) : super(const RegisterScreenState());

  final BuildContext context;

  String expression = '';

  void numClick(String text) {
    if (expression.length >= 7) {} else{
      state = state.copyWith(
        exp: expression + text,
      );
    }
  }

  void delete() {
    HapticFeedback.mediumImpact();
    if(expression.isEmpty){}
    else{
      final pos = expression.length - 1;
      expression = expression.substring(0, pos);
      state = state.copyWith(
        exp: expression.substring(0, pos),
      );
    }
  }

  void allDelete() {
    state = state.copyWith(
      exp: '',
    );
  }

  void onTapBack() {
    Navigator.of(context).pop();
  }


}
