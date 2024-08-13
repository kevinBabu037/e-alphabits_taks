import 'all_batch.dart';

class CourseModel {
	List<AllBatch>? allBatches;

	CourseModel({this.allBatches});

	factory CourseModel.fromJson(Map<String, dynamic> json) => CourseModel(
				allBatches: (json['allBatches'] as List<dynamic>?)
						?.map((e) => AllBatch.fromJson(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toJson() => {
				'allBatches': allBatches?.map((e) => e.toJson()).toList(),
			};
}
