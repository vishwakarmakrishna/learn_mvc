import 'package:flutter/material.dart';
import 'package:learn_mvc/feature/payment/provider/payment_provider.dart';
import 'package:learn_mvc/feature/payment/screen/view/payment_test_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PaymentProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const PaymentTestScreen(),
      ),
    );
  }
}
