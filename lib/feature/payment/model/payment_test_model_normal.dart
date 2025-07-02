class PaymentTestModel {
  final String? status;
  final String? method;

  const PaymentTestModel({required this.status, required this.method});

  factory PaymentTestModel.fromJson(Map<String, dynamic> json) {
    return PaymentTestModel(
      status: json['status'] as String?,
      method: json['method'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'status': status, 'method': method};
  }

  copyWith({String? status, String? method}) {
    return PaymentTestModel(
      status: status ?? this.status,
      method: method ?? this.method,
    );
  }
}
