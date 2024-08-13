import 'package:bloc/bloc.dart';
import 'package:ealphabit_task/model/course_model/all_batch.dart';
import 'package:ealphabit_task/repo/course_fech_service.dart';
import 'package:meta/meta.dart';

part 'course_event.dart';
part 'course_state.dart';

class CourseBloc extends Bloc<CourseEvent, CourseState> {
  CourseBloc() : super(CourseInitial()) {

  CourseService service =CourseService();

    on<FechAllcoureseEvent>((event, emit)async {
        emit(CourseLoadingStae());
          
        AllBatch? data =  await service.fechCourse();

        if (data!=null) {
          emit(CourseSuccessState(course: data));
        }
        else {
          emit(CourseErrorState());
        }

    });



  }
}
