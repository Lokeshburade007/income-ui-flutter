import 'package:flutter/material.dart';
import 'package:invoice/components/bottomNavigation.dart';
import 'package:invoice/components/header.dart';
import 'package:invoice/components/invoicepage.dart';
import 'package:invoice/pages/apppay.dart';
import 'package:invoice/pages/gstfiling.dart';
import 'package:invoice/pages/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // List of pages to display based on the selected index
  final List<Widget> _pages = const [
    InvoicePage(), // Home Page (Invoice)
    GstFiling(), // GST Filing Page
    AppPay(), // App Pay Page
    Settings(), // Settings Page
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomHeader(), // Custom Header
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex, // Pass the selected index
        onItemTapped: _onItemTapped, // Pass the callback function
      ),
    );
  }
}
