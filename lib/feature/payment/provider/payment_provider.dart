import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:learn_mvc/feature/payment/model/payment_test_model.dart';
import 'package:learn_mvc/feature/payment/repo/payment_repo.dart';

class PaymentProvider extends ChangeNotifier {
  final PaymentRepo _paymentRepo = PaymentRepo();
  PaymentTestModel? paymentTestModel;
  bool isLoading = false;
  Future<void> fetchPaymentTest() async {
    isLoading = true;
    notifyListeners();
    try {
      PaymentTestModel? result = await _paymentRepo.getTestApi();
      if (result != null) {
        paymentTestModel = result;
        notifyListeners();
      } else {
        throw Exception('No data received from API');
      }
    } catch (e) {
      log("Error fetching payment test: $e");
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
