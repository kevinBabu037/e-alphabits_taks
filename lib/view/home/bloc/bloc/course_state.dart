part of 'course_bloc.dart';

@immutable
sealed class CourseState {}

final class CourseInitial extends CourseState {}

final class CourseLoadingStae extends CourseState {}

final class CourseSuccessState extends CourseState {
  final AllBatch course;

  CourseSuccessState({required this.course});
}

final class CourseErrorState extends CourseState {}

