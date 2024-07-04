import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web/src/presentation/base/bloc/base_bloc.dart';
import 'package:flutter_web/src/presentation/ui/testimonial/bloc/testimonial_container_event.dart';
import 'package:flutter_web/src/presentation/ui/testimonial/bloc/testimonial_container_state.dart';
import 'package:injectable/injectable.dart';


@injectable
class TestimonialConatinerBloc extends BaseBloc<TestimonialConatinerEvent,TestimonialConatinerState>{
  TestimonialConatinerBloc():super(TestimonialConatinerState()){
    on<TestimonialConatinerInitiated>(
      _onTestimonialConatinerInitiated,
    );
  }

  void _onTestimonialConatinerInitiated(TestimonialConatinerInitiated event, Emitter<TestimonialConatinerState> emit) {
    emit(
      state.copyWith(
          listItem: event.model?.items
      ),
    );
  }
  @override
  Stream<TestimonialConatinerState> mapEventToStateHandler(TestimonialConatinerEvent event) async* {}
}



