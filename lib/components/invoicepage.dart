import 'package:flutter/material.dart';

class InvoicePage extends StatefulWidget {
  const InvoicePage({super.key});

  @override
  State<InvoicePage> createState() => _InvoicePageState();
}

class _InvoicePageState extends State<InvoicePage> {
  int selectedIndex = 0; // Track which tab is selected

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          false, // Prevent the body from resizing when the keyboard appears
      backgroundColor: Colors.grey[200], // Use the custom header component
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                // Search bar and filter
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF9F9F9),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey[300]!),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0, 2),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: const Row(
                      children: [
                        Expanded(
                          child: TextField(
                            style: TextStyle(color: Colors.grey),
                            decoration: InputDecoration(
                              hintText: 'search',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Icon(Icons.filter_list, color: Colors.grey),
                      ],
                    ),
                  ),
                ),
                // Tabs with underline for the selected tab
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildTabButton('All', 0),
                      buildTabButton('E-Invoices', 1),
                      buildTabButton('Bill of Supply', 2),
                    ],
                  ),
                ),
                // Empty state with image and message
                const SizedBox(height: 26),
                const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(height: 36),
                      Text(
                        "You haven't created any Invoice yet.",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      SizedBox(height: 46),
                      Icon(Icons.insert_drive_file,
                          size: 100, color: Colors.grey),
                      SizedBox(height: 16),
                      Text(
                        "Create your First Invoice Now",
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      SizedBox(height: 176),
                    ],
                  ),
                ),
                const SizedBox(height: 56),
              ],
            ),
          ),
          // Create Invoice button fixed at the bottom
          Positioned(
            left: 28.0,
            right: 28.0,
            bottom: 20.0,
            child: Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF0049AD),
                    Color(0xFF00BDC9),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(22),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  minimumSize: const Size(double.infinity, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
                child: const Text(
                  'Create Invoice',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to create the tab buttons
  Widget buildTabButton(String title, int index) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextButton(
          onPressed: () {
            setState(() {
              selectedIndex = index;
            });
          },
          style: TextButton.styleFrom(
            foregroundColor:
                selectedIndex == index ? Colors.black : Colors.grey,
          ),
          child: Text(
            title,
            style: const TextStyle(fontSize: 18),
          ),
        ),
        if (selectedIndex == index)
          Container(
            width: 56,
            height: 2,
            color: const Color(0xFF1B76AB),
          ),
      ],
    );
  }
}
