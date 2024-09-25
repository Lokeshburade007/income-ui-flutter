import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex; // To hold the currently selected index
  final Function(int) onItemTapped; // Callback to handle item tap

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex, // Require selected index
    required this.onItemTapped, // Require callback function
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, -2),
            blurRadius: 6,
          ),
        ],
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex, // Set the current index
        selectedItemColor: const Color(0xFF1B76AB),
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          // Call the callback with the selected index
          onItemTapped(index);
        },
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
