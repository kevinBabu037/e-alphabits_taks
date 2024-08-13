class WatchTime {
	String? lectureId;
	int? watchTime;
	String? id;

	WatchTime({this.lectureId, this.watchTime, this.id});

	factory WatchTime.fromJson(Map<String, dynamic> json) => WatchTime(
				lectureId: json['lectureId'] as String?,
				watchTime: json['watchTime'] as int?,
				id: json['_id'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'lectureId': lectureId,
				'watchTime': watchTime,
				'_id': id,
			};
}
