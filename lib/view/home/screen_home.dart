import 'package:ealphabit_task/view/home/bloc/bloc/course_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<CourseBloc>().add(FechAllcoureseEvent());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Text("Batches",style: TextStyle(fontSize: 22),),
              Expanded(
                child: BlocBuilder<CourseBloc, CourseState>(
                  builder: (context, state) {
                    if (state is CourseLoadingStae) {
                      return const Center(child: CircularProgressIndicator(),);
                    }
                    if (state is CourseSuccessState) {
                       return ListView.separated(
                                  itemBuilder: (context, index) {
                                    return Container(
                                      decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      height: 200,
                                      width: double.infinity,
                                      child: Center(child: Text(state.course.id??'no data'),),
                                    );
                                  }, 
                                  separatorBuilder: (context, index) =>const SizedBox(height: 10,), 
                                  itemCount: 5
                                  ); 
                    }
                    return const Center(child: Text("Fail to fech"),);
                  },
                ),
              ),
            ],
          ),
        )
        ),
        
    );
  }
}