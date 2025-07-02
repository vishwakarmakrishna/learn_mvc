import 'package:learn_mvc/config/network/api_service.dart';
import 'package:learn_mvc/core/constants/api_endpoints.dart';
import 'package:learn_mvc/feature/payment/model/payment_test_model.dart';

class PaymentRepo {
  final ApiService _apiService = ApiService();
  Future<PaymentTestModel?> getTestApi() async {
    try {
      final response = await _apiService.request(
        ApiEndPoints.testEndpoint,
        ApiMethods.get,
      );
      if (response.statusCode == 200) {
        return PaymentTestModel.fromJson(response.data);
      } else {
        throw Exception('Failed to load data: ${response.statusMessage}');
      }
    } catch (e) {
      throw Exception('Failed to process payment: $e');
    }
  }
}
