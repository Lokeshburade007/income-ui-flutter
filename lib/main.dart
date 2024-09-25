import 'package:flutter/material.dart';
import 'package:invoice/pages/apppay.dart';
import 'package:invoice/pages/gstfiling.dart';
import 'package:invoice/pages/home_page.dart';
import 'package:invoice/pages/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Set the initial route
      routes: {
        '/': (context) => const HomePage(), // Home Page route
        '/gstfiling': (context) => const GstFiling(), // GST Filing Page route
        '/apppay': (context) => const AppPay(), // App Pay Page route
        '/settings': (context) => const Settings(), // Settings Page route
      },
    );
  }
}
