import 'purchase_detail.dart';

class Student {
	String? id;
	String? userName;
	int? phoneNumber;
	String? description;
	bool? isActive;
	int? walletPoint;
	List<String>? courses;
	List<dynamic>? batches;
	List<dynamic>? subjects;
	List<dynamic>? videos;
	List<dynamic>? liveSessions;
	bool? isPaid;
	int? count;
	bool? isLoggedIn;
	List<PurchaseDetail>? purchaseDetails;
	List<dynamic>? watchTimes;
	DateTime? createdAt;
	DateTime? updatedAt;
	int? v;
	String? deviceId;
	String? dob;
	String? gender;
	String? role;
	String? token;
	int? userType;
	String? city;
	String? email;
	String? image;
	String? referral;
	String? state;

	Student({
		this.id, 
		this.userName, 
		this.phoneNumber, 
		this.description, 
		this.isActive, 
		this.walletPoint, 
		this.courses, 
		this.batches, 
		this.subjects, 
		this.videos, 
		this.liveSessions, 
		this.isPaid, 
		this.count, 
		this.isLoggedIn, 
		this.purchaseDetails, 
		this.watchTimes, 
		this.createdAt, 
		this.updatedAt, 
		this.v, 
		this.deviceId, 
		this.dob, 
		this.gender, 
		this.role, 
		this.token, 
		this.userType, 
		this.city, 
		this.email, 
		this.image, 
		this.referral, 
		this.state, 
	});

	factory Student.fromJson(Map<String, dynamic> json) => Student(
				id: json['_id'] as String?,
				userName: json['userName'] as String?,
				phoneNumber: json['phoneNumber'] as int?,
				description: json['description'] as String?,
				isActive: json['isActive'] as bool?,
				walletPoint: json['walletPoint'] as int?,
				courses: json['courses'] as List<String>?,
				batches: json['batches'] as List<dynamic>?,
				subjects: json['subjects'] as List<dynamic>?,
				videos: json['videos'] as List<dynamic>?,
				liveSessions: json['liveSessions'] as List<dynamic>?,
				isPaid: json['isPaid'] as bool?,
				count: json['count'] as int?,
				isLoggedIn: json['isLoggedIn'] as bool?,
				purchaseDetails: (json['purchase_details'] as List<dynamic>?)
						?.map((e) => PurchaseDetail.fromJson(e as Map<String, dynamic>))
						.toList(),
				watchTimes: json['watch_times'] as List<dynamic>?,
				createdAt: json['createdAt'] == null
						? null
						: DateTime.parse(json['createdAt'] as String),
				updatedAt: json['updatedAt'] == null
						? null
						: DateTime.parse(json['updatedAt'] as String),
				v: json['__v'] as int?,
				deviceId: json['deviceId'] as String?,
				dob: json['dob'] as String?,
				gender: json['gender'] as String?,
				role: json['role'] as String?,
				token: json['token'] as String?,
				userType: json['userType'] as int?,
				city: json['city'] as String?,
				email: json['email'] as String?,
				image: json['image'] as String?,
				referral: json['referral'] as String?,
				state: json['state'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'_id': id,
				'userName': userName,
				'phoneNumber': phoneNumber,
				'description': description,
				'isActive': isActive,
				'walletPoint': walletPoint,
				'courses': courses,
				'batches': batches,
				'subjects': subjects,
				'videos': videos,
				'liveSessions': liveSessions,
				'isPaid': isPaid,
				'count': count,
				'isLoggedIn': isLoggedIn,
				'purchase_details': purchaseDetails?.map((e) => e.toJson()).toList(),
				'watch_times': watchTimes,
				'createdAt': createdAt?.toIso8601String(),
				'updatedAt': updatedAt?.toIso8601String(),
				'__v': v,
				'deviceId': deviceId,
				'dob': dob,
				'gender': gender,
				'role': role,
				'token': token,
				'userType': userType,
				'city': city,
				'email': email,
				'image': image,
				'referral': referral,
				'state': state,
			};
}
