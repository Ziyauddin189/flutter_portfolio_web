import 'package:flutter/cupertino.dart';
import 'package:flutter_web/src/presentation/base/bloc/base_bloc_event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:data/src/data.dart';
part 'testimonial_container_event.freezed.dart';

@immutable
abstract class TestimonialConatinerEvent extends BaseBlocEvent {
  const TestimonialConatinerEvent();
}

@freezed
class TestimonialConatinerInitiated extends TestimonialConatinerEvent with _$TestimonialConatinerInitiated {
  const factory TestimonialConatinerInitiated({required TestimonialItemList? model}) = _TestimonialConatinerInitiated;
}