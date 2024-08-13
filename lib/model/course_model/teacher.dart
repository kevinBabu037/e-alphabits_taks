import 'watch_time.dart';

class Teacher {
	String? id;
	String? userName;
	int? phoneNumber;
	String? email;
	String? description;
	DateTime? dob;
	String? city;
	String? state;
	String? gender;
	bool? isActive;
	int? userType;
	String? refCode;
	int? walletPoint;
	String? role;
	List<String>? courses;
	List<String>? batches;
	List<String>? subjects;
	List<String>? videos;
	List<String>? liveSessions;
	String? image;
	String? password;
	bool? isPaid;
	int? count;
	bool? isLoggedIn;
	List<dynamic>? purchaseDetails;
	List<WatchTime>? watchTimes;
	DateTime? createdAt;
	DateTime? updatedAt;
	int? v;

	Teacher({
		this.id, 
		this.userName, 
		this.phoneNumber, 
		this.email, 
		this.description, 
		this.dob, 
		this.city, 
		this.state, 
		this.gender, 
		this.isActive, 
		this.userType, 
		this.refCode, 
		this.walletPoint, 
		this.role, 
		this.courses, 
		this.batches, 
		this.subjects, 
		this.videos, 
		this.liveSessions, 
		this.image, 
		this.password, 
		this.isPaid, 
		this.count, 
		this.isLoggedIn, 
		this.purchaseDetails, 
		this.watchTimes, 
		this.createdAt, 
		this.updatedAt, 
		this.v, 
	});

	factory Teacher.fromJson(Map<String, dynamic> json) => Teacher(
				id: json['_id'] as String?,
				userName: json['userName'] as String?,
				phoneNumber: json['phoneNumber'] as int?,
				email: json['email'] as String?,
				description: json['description'] as String?,
				dob: json['dob'] == null
						? null
						: DateTime.parse(json['dob'] as String),
				city: json['city'] as String?,
				state: json['state'] as String?,
				gender: json['gender'] as String?,
				isActive: json['isActive'] as bool?,
				userType: json['userType'] as int?,
				refCode: json['refCode'] as String?,
				walletPoint: json['walletPoint'] as int?,
				role: json['role'] as String?,
				courses: json['courses'] as List<String>?,
				batches: json['batches'] as List<String>?,
				subjects: json['subjects'] as List<String>?,
				videos: json['videos'] as List<String>?,
				liveSessions: json['liveSessions'] as List<String>?,
				image: json['image'] as String?,
				password: json['password'] as String?,
				isPaid: json['isPaid'] as bool?,
				count: json['count'] as int?,
				isLoggedIn: json['isLoggedIn'] as bool?,
				purchaseDetails: json['purchase_details'] as List<dynamic>?,
				watchTimes: (json['watch_times'] as List<dynamic>?)
						?.map((e) => WatchTime.fromJson(e as Map<String, dynamic>))
						.toList(),
				createdAt: json['createdAt'] == null
						? null
						: DateTime.parse(json['createdAt'] as String),
				updatedAt: json['updatedAt'] == null
						? null
						: DateTime.parse(json['updatedAt'] as String),
				v: json['__v'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'_id': id,
				'userName': userName,
				'phoneNumber': phoneNumber,
				'email': email,
				'description': description,
				'dob': dob?.toIso8601String(),
				'city': city,
				'state': state,
				'gender': gender,
				'isActive': isActive,
				'userType': userType,
				'refCode': refCode,
				'walletPoint': walletPoint,
				'role': role,
				'courses': courses,
				'batches': batches,
				'subjects': subjects,
				'videos': videos,
				'liveSessions': liveSessions,
				'image': image,
				'password': password,
				'isPaid': isPaid,
				'count': count,
				'isLoggedIn': isLoggedIn,
				'purchase_details': purchaseDetails,
				'watch_times': watchTimes?.map((e) => e.toJson()).toList(),
				'createdAt': createdAt?.toIso8601String(),
				'updatedAt': updatedAt?.toIso8601String(),
				'__v': v,
			};
}
