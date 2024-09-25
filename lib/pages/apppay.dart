import 'package:flutter/material.dart';

class AppPay extends StatefulWidget {
  const AppPay({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _AppPayState createState() => _AppPayState();
}

class _AppPayState extends State<AppPay> {
  // Add any state variables or methods here if needed

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // Custom Header
      body: Center(
        child: Text(
          'App Pay Page', // Replace this with actual content
          style: TextStyle(fontSize: 24), // Example styling
        ),
      ),
    );
  }
}
