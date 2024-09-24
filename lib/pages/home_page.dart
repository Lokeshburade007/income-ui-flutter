import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          ),
          // Add title to center the "Invoices" text
          title: const Padding(
            padding: EdgeInsets.only(top: 36.0),
            child: Text(
              'Invoices',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
          centerTitle: true, // This centers the title text
        ),
      ),
    );
  }
}
