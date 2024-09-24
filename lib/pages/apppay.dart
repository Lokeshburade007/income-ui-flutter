import 'package:flutter/material.dart';

class AppPay extends StatelessWidget {
  const AppPay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          backgroundColor: const Color(0xFF1B76AB),
          foregroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
          leading: Builder(
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 4),
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/back');
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 22,
                    ),
                  ),
              );
            },
            // Text center Invoices
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF1B76AB),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'GST Filing',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'App Pay',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    
    );
  }
}
