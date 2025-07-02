import 'package:flutter/material.dart';
import 'package:learn_mvc/feature/payment/provider/payment_provider.dart';
import 'package:provider/provider.dart';

class PaymentTestScreen extends StatefulWidget {
  const PaymentTestScreen({super.key});

  @override
  State<PaymentTestScreen> createState() => _PaymentTestScreenState();
}

class _PaymentTestScreenState extends State<PaymentTestScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // This is where you can call your provider method to fetch data
      // For example:
      context.read<PaymentProvider>().fetchPaymentTest();
      // Provider.of(context, listen: false).fetchPaymentTest();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PaymentProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          appBar: AppBar(title: const Text('Payment Test Screen')),
          body: provider.isLoading
              ? const Center(child: CircularProgressIndicator())
              : provider.paymentTestModel == null
              ? const Center(child: Text('No data available'))
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Status: ${provider.paymentTestModel!.status}'),
                      Text('Method: ${provider.paymentTestModel!.method}'),
                    ],
                  ),
                ),
        );
      },
    );
  }
}
