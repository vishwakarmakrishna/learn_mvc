import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_test_model.freezed.dart';
part 'payment_test_model.g.dart';

@freezed
abstract class PaymentTestModel with _$PaymentTestModel {
  const factory PaymentTestModel({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "method") String? method,
  }) = _PaymentTestModel;

  factory PaymentTestModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentTestModelFromJson(json);
}
