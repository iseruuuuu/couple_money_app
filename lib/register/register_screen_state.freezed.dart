// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'register_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterScreenStateTearOff {
  const _$RegisterScreenStateTearOff();

  _RegisterScreenState call({String exp = ''}) {
    return _RegisterScreenState(
      exp: exp,
    );
  }
}

/// @nodoc
const $RegisterScreenState = _$RegisterScreenStateTearOff();

/// @nodoc
mixin _$RegisterScreenState {
  String get exp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterScreenStateCopyWith<RegisterScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterScreenStateCopyWith<$Res> {
  factory $RegisterScreenStateCopyWith(
          RegisterScreenState value, $Res Function(RegisterScreenState) then) =
      _$RegisterScreenStateCopyWithImpl<$Res>;
  $Res call({String exp});
}

/// @nodoc
class _$RegisterScreenStateCopyWithImpl<$Res>
    implements $RegisterScreenStateCopyWith<$Res> {
  _$RegisterScreenStateCopyWithImpl(this._value, this._then);

  final RegisterScreenState _value;
  // ignore: unused_field
  final $Res Function(RegisterScreenState) _then;

  @override
  $Res call({
    Object? exp = freezed,
  }) {
    return _then(_value.copyWith(
      exp: exp == freezed
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RegisterScreenStateCopyWith<$Res>
    implements $RegisterScreenStateCopyWith<$Res> {
  factory _$RegisterScreenStateCopyWith(_RegisterScreenState value,
          $Res Function(_RegisterScreenState) then) =
      __$RegisterScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({String exp});
}

/// @nodoc
class __$RegisterScreenStateCopyWithImpl<$Res>
    extends _$RegisterScreenStateCopyWithImpl<$Res>
    implements _$RegisterScreenStateCopyWith<$Res> {
  __$RegisterScreenStateCopyWithImpl(
      _RegisterScreenState _value, $Res Function(_RegisterScreenState) _then)
      : super(_value, (v) => _then(v as _RegisterScreenState));

  @override
  _RegisterScreenState get _value => super._value as _RegisterScreenState;

  @override
  $Res call({
    Object? exp = freezed,
  }) {
    return _then(_RegisterScreenState(
      exp: exp == freezed
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterScreenState implements _RegisterScreenState {
  const _$_RegisterScreenState({this.exp = ''});

  @JsonKey(defaultValue: '')
  @override
  final String exp;

  @override
  String toString() {
    return 'RegisterScreenState(exp: $exp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterScreenState &&
            (identical(other.exp, exp) ||
                const DeepCollectionEquality().equals(other.exp, exp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exp);

  @JsonKey(ignore: true)
  @override
  _$RegisterScreenStateCopyWith<_RegisterScreenState> get copyWith =>
      __$RegisterScreenStateCopyWithImpl<_RegisterScreenState>(
          this, _$identity);
}

abstract class _RegisterScreenState implements RegisterScreenState {
  const factory _RegisterScreenState({String exp}) = _$_RegisterScreenState;

  @override
  String get exp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterScreenStateCopyWith<_RegisterScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
