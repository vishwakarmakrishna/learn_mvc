// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_test_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentTestModel {

@JsonKey(name: "status") String? get status;@JsonKey(name: "method") String? get method;
/// Create a copy of PaymentTestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentTestModelCopyWith<PaymentTestModel> get copyWith => _$PaymentTestModelCopyWithImpl<PaymentTestModel>(this as PaymentTestModel, _$identity);

  /// Serializes this PaymentTestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentTestModel&&(identical(other.status, status) || other.status == status)&&(identical(other.method, method) || other.method == method));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,method);

@override
String toString() {
  return 'PaymentTestModel(status: $status, method: $method)';
}


}

/// @nodoc
abstract mixin class $PaymentTestModelCopyWith<$Res>  {
  factory $PaymentTestModelCopyWith(PaymentTestModel value, $Res Function(PaymentTestModel) _then) = _$PaymentTestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "status") String? status,@JsonKey(name: "method") String? method
});




}
/// @nodoc
class _$PaymentTestModelCopyWithImpl<$Res>
    implements $PaymentTestModelCopyWith<$Res> {
  _$PaymentTestModelCopyWithImpl(this._self, this._then);

  final PaymentTestModel _self;
  final $Res Function(PaymentTestModel) _then;

/// Create a copy of PaymentTestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? method = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PaymentTestModel implements PaymentTestModel {
  const _PaymentTestModel({@JsonKey(name: "status") this.status, @JsonKey(name: "method") this.method});
  factory _PaymentTestModel.fromJson(Map<String, dynamic> json) => _$PaymentTestModelFromJson(json);

@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "method") final  String? method;

/// Create a copy of PaymentTestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentTestModelCopyWith<_PaymentTestModel> get copyWith => __$PaymentTestModelCopyWithImpl<_PaymentTestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentTestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentTestModel&&(identical(other.status, status) || other.status == status)&&(identical(other.method, method) || other.method == method));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,method);

@override
String toString() {
  return 'PaymentTestModel(status: $status, method: $method)';
}


}

/// @nodoc
abstract mixin class _$PaymentTestModelCopyWith<$Res> implements $PaymentTestModelCopyWith<$Res> {
  factory _$PaymentTestModelCopyWith(_PaymentTestModel value, $Res Function(_PaymentTestModel) _then) = __$PaymentTestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "status") String? status,@JsonKey(name: "method") String? method
});




}
/// @nodoc
class __$PaymentTestModelCopyWithImpl<$Res>
    implements _$PaymentTestModelCopyWith<$Res> {
  __$PaymentTestModelCopyWithImpl(this._self, this._then);

  final _PaymentTestModel _self;
  final $Res Function(_PaymentTestModel) _then;

/// Create a copy of PaymentTestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? method = freezed,}) {
  return _then(_PaymentTestModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
