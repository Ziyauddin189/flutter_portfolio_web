// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'testimonial_container_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TestimonialConatinerState {
  List<TestimonialItem>? get listItem => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestimonialConatinerStateCopyWith<TestimonialConatinerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestimonialConatinerStateCopyWith<$Res> {
  factory $TestimonialConatinerStateCopyWith(TestimonialConatinerState value,
          $Res Function(TestimonialConatinerState) then) =
      _$TestimonialConatinerStateCopyWithImpl<$Res, TestimonialConatinerState>;
  @useResult
  $Res call({List<TestimonialItem>? listItem});
}

/// @nodoc
class _$TestimonialConatinerStateCopyWithImpl<$Res,
        $Val extends TestimonialConatinerState>
    implements $TestimonialConatinerStateCopyWith<$Res> {
  _$TestimonialConatinerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listItem = freezed,
  }) {
    return _then(_value.copyWith(
      listItem: freezed == listItem
          ? _value.listItem
          : listItem // ignore: cast_nullable_to_non_nullable
              as List<TestimonialItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestimonialConatinerStateImplCopyWith<$Res>
    implements $TestimonialConatinerStateCopyWith<$Res> {
  factory _$$TestimonialConatinerStateImplCopyWith(
          _$TestimonialConatinerStateImpl value,
          $Res Function(_$TestimonialConatinerStateImpl) then) =
      __$$TestimonialConatinerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TestimonialItem>? listItem});
}

/// @nodoc
class __$$TestimonialConatinerStateImplCopyWithImpl<$Res>
    extends _$TestimonialConatinerStateCopyWithImpl<$Res,
        _$TestimonialConatinerStateImpl>
    implements _$$TestimonialConatinerStateImplCopyWith<$Res> {
  __$$TestimonialConatinerStateImplCopyWithImpl(
      _$TestimonialConatinerStateImpl _value,
      $Res Function(_$TestimonialConatinerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listItem = freezed,
  }) {
    return _then(_$TestimonialConatinerStateImpl(
      listItem: freezed == listItem
          ? _value._listItem
          : listItem // ignore: cast_nullable_to_non_nullable
              as List<TestimonialItem>?,
    ));
  }
}

/// @nodoc

class _$TestimonialConatinerStateImpl implements _TestimonialConatinerState {
  const _$TestimonialConatinerStateImpl(
      {final List<TestimonialItem>? listItem = const []})
      : _listItem = listItem;

  final List<TestimonialItem>? _listItem;
  @override
  @JsonKey()
  List<TestimonialItem>? get listItem {
    final value = _listItem;
    if (value == null) return null;
    if (_listItem is EqualUnmodifiableListView) return _listItem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TestimonialConatinerState(listItem: $listItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestimonialConatinerStateImpl &&
            const DeepCollectionEquality().equals(other._listItem, _listItem));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_listItem));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestimonialConatinerStateImplCopyWith<_$TestimonialConatinerStateImpl>
      get copyWith => __$$TestimonialConatinerStateImplCopyWithImpl<
          _$TestimonialConatinerStateImpl>(this, _$identity);
}

abstract class _TestimonialConatinerState implements TestimonialConatinerState {
  const factory _TestimonialConatinerState(
          {final List<TestimonialItem>? listItem}) =
      _$TestimonialConatinerStateImpl;

  @override
  List<TestimonialItem>? get listItem;
  @override
  @JsonKey(ignore: true)
  _$$TestimonialConatinerStateImplCopyWith<_$TestimonialConatinerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
