class PurchaseDetail {
	String? courseId;
	String? batchId;
	String? planId;
	String? planType;
	bool? isPurchased;
	int? amountPaid;
	String? orderId;
	String? id;

	PurchaseDetail({
		this.courseId, 
		this.batchId, 
		this.planId, 
		this.planType, 
		this.isPurchased, 
		this.amountPaid, 
		this.orderId, 
		this.id, 
	});

	factory PurchaseDetail.fromJson(Map<String, dynamic> json) {
		return PurchaseDetail(
			courseId: json['courseId'] as String?,
			batchId: json['batchId'] as String?,
			planId: json['planId'] as String?,
			planType: json['plan_type'] as String?,
			isPurchased: json['isPurchased'] as bool?,
			amountPaid: json['amountPaid'] as int?,
			orderId: json['orderId'] as String?,
			id: json['_id'] as String?,
		);
	}



	Map<String, dynamic> toJson() => {
				'courseId': courseId,
				'batchId': batchId,
				'planId': planId,
				'plan_type': planType,
				'isPurchased': isPurchased,
				'amountPaid': amountPaid,
				'orderId': orderId,
				'_id': id,
			};
}
