import 'student.dart';
import 'teacher.dart';

class AllBatch {
	String? id;
	String? name;
	String? startDate;
	String? endDate;
	String? bannerImage;
	String? classType;
	String? batchOwner;
	String? description;
	List<Student>? students;
	List<Teacher>? teachers;
	String? course;
	String? syllabusType;
	String? language;
	DateTime? createdAt;
	DateTime? updatedAt;
	int? v;
	bool? isPurchased;

	AllBatch({
		this.id, 
		this.name, 
		this.startDate, 
		this.endDate, 
		this.bannerImage, 
		this.classType, 
		this.batchOwner, 
		this.description, 
		this.students, 
		this.teachers, 
		this.course, 
		this.syllabusType, 
		this.language, 
		this.createdAt, 
		this.updatedAt, 
		this.v, 
		this.isPurchased, 
	});

	factory AllBatch.fromJson(Map<String, dynamic> json) => AllBatch(
				id: json['_id'] as String?,
				name: json['name'] as String?,
				startDate: json['startDate'] as String?,
				endDate: json['endDate'] as String?,
				bannerImage: json['bannerImage'] as String?,
				classType: json['class_type'] as String?,
				batchOwner: json['batch_owner'] as String?,
				description: json['description'] as String?,
				students: (json['students'] as List<dynamic>?)
						?.map((e) => Student.fromJson(e as Map<String, dynamic>))
						.toList(),
				teachers: (json['teachers'] as List<dynamic>?)
						?.map((e) => Teacher.fromJson(e as Map<String, dynamic>))
						.toList(),
				course: json['course'] as String?,
				syllabusType: json['syllabus_type'] as String?,
				language: json['language'] as String?,
				createdAt: json['createdAt'] == null
						? null
						: DateTime.parse(json['createdAt'] as String),
				updatedAt: json['updatedAt'] == null
						? null
						: DateTime.parse(json['updatedAt'] as String),
				v: json['__v'] as int?,
				isPurchased: json['is_purchased'] as bool?,
			);

	Map<String, dynamic> toJson() => {
				'_id': id,
				'name': name,
				'startDate': startDate,
				'endDate': endDate,
				'bannerImage': bannerImage,
				'class_type': classType,
				'batch_owner': batchOwner,
				'description': description,
				'students': students?.map((e) => e.toJson()).toList(),
				'teachers': teachers?.map((e) => e.toJson()).toList(),
				'course': course,
				'syllabus_type': syllabusType,
				'language': language,
				'createdAt': createdAt?.toIso8601String(),
				'updatedAt': updatedAt?.toIso8601String(),
				'__v': v,
				'is_purchased': isPurchased,
			};
}
