// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'testimonial_container_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TestimonialConatinerInitiated {
  TestimonialItemList? get model => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestimonialConatinerInitiatedCopyWith<TestimonialConatinerInitiated>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestimonialConatinerInitiatedCopyWith<$Res> {
  factory $TestimonialConatinerInitiatedCopyWith(
          TestimonialConatinerInitiated value,
          $Res Function(TestimonialConatinerInitiated) then) =
      _$TestimonialConatinerInitiatedCopyWithImpl<$Res,
          TestimonialConatinerInitiated>;
  @useResult
  $Res call({TestimonialItemList? model});
}

/// @nodoc
class _$TestimonialConatinerInitiatedCopyWithImpl<$Res,
        $Val extends TestimonialConatinerInitiated>
    implements $TestimonialConatinerInitiatedCopyWith<$Res> {
  _$TestimonialConatinerInitiatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_value.copyWith(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TestimonialItemList?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestimonialConatinerInitiatedImplCopyWith<$Res>
    implements $TestimonialConatinerInitiatedCopyWith<$Res> {
  factory _$$TestimonialConatinerInitiatedImplCopyWith(
          _$TestimonialConatinerInitiatedImpl value,
          $Res Function(_$TestimonialConatinerInitiatedImpl) then) =
      __$$TestimonialConatinerInitiatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TestimonialItemList? model});
}

/// @nodoc
class __$$TestimonialConatinerInitiatedImplCopyWithImpl<$Res>
    extends _$TestimonialConatinerInitiatedCopyWithImpl<$Res,
        _$TestimonialConatinerInitiatedImpl>
    implements _$$TestimonialConatinerInitiatedImplCopyWith<$Res> {
  __$$TestimonialConatinerInitiatedImplCopyWithImpl(
      _$TestimonialConatinerInitiatedImpl _value,
      $Res Function(_$TestimonialConatinerInitiatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$TestimonialConatinerInitiatedImpl(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TestimonialItemList?,
    ));
  }
}

/// @nodoc

class _$TestimonialConatinerInitiatedImpl
    implements _TestimonialConatinerInitiated {
  const _$TestimonialConatinerInitiatedImpl({required this.model});

  @override
  final TestimonialItemList? model;

  @override
  String toString() {
    return 'TestimonialConatinerInitiated(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestimonialConatinerInitiatedImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestimonialConatinerInitiatedImplCopyWith<
          _$TestimonialConatinerInitiatedImpl>
      get copyWith => __$$TestimonialConatinerInitiatedImplCopyWithImpl<
          _$TestimonialConatinerInitiatedImpl>(this, _$identity);
}

abstract class _TestimonialConatinerInitiated
    implements TestimonialConatinerInitiated {
  const factory _TestimonialConatinerInitiated(
          {required final TestimonialItemList? model}) =
      _$TestimonialConatinerInitiatedImpl;

  @override
  TestimonialItemList? get model;
  @override
  @JsonKey(ignore: true)
  _$$TestimonialConatinerInitiatedImplCopyWith<
          _$TestimonialConatinerInitiatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
