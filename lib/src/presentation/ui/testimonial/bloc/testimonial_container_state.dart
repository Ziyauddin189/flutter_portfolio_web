import 'package:data/src/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_web/src/presentation/base/bloc/base_bloc_state.dart';
part 'testimonial_container_state.freezed.dart';

@freezed
class TestimonialConatinerState extends BaseBlocState with _$TestimonialConatinerState {
  const factory TestimonialConatinerState({
    @Default([]) List<TestimonialItem>? listItem,
  }) = _TestimonialConatinerState;
}