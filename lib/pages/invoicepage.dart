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
      backgroundColor: Colors.grey[200],
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          backgroundColor: const Color(0xFF1B76AB),
          foregroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(
                top: 20.0, left: 4), // Adding padding to the IconButton
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          title: const Padding(
            padding: EdgeInsets.only(
                top: 28.0, left: 4), // Padding for the title as well
            child: Text(
              'Invoices',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: Stack(
        // Use Stack to overlay the button
        children: [
          SingleChildScrollView(
            // Enable scrolling for the main content
            child: Column(
              children: [
                // Search bar and filter
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: const Row(
                      children: [
                        Expanded(
                          child: TextField(
                            style: TextStyle(
                              color: Colors.grey, // Set the text color
                            ),
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
                // Tabs with a visible underline for the selected tab
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                selectedIndex = 0;
                              });
                            },
                            child: const Text('All'),
                          ),
                          if (selectedIndex == 0)
                            Container(
                              width: 56,
                              height: 2,
                              color: const Color(0xFF1B76AB),
                            ),
                        ],
                      ),
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                selectedIndex = 1;
                              });
                            },
                            child: const Text('E-Invoices'),
                          ),
                          selectedIndex == 1
                              ? Container(
                                  width: 70,
                                  height: 2,
                                  color: Colors.black,
                                )
                              : Container(),
                        ],
                      ),
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                selectedIndex = 2;
                              });
                            },
                            child: const Text('Bill of Supply'),
                          ),
                          selectedIndex == 2
                              ? Container(
                                  width: 100,
                                  height: 2,
                                  color: Colors.black,
                                )
                              : Container(),
                        ],
                      ),
                    ],
                  ),
                ),
                // Empty state with image and message
                const SizedBox(height: 16), // Add spacing
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
                      Icon(
                        Icons.insert_drive_file,
                        size: 100,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 16),
                      Text(
                        "Create your First Invoice Now",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      SizedBox(height: 176),
                    ],
                  ),
                ),
                const SizedBox(height: 56), // Space for the button
              ],
            ),
          ),
          // Create Invoice button fixed at the bottom
          Positioned(
            left: 28.0,
            right: 28.0,
            bottom: 20.0,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2890CD),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
                minimumSize: const Size(double.infinity, 56),
              ),
              child: const Text(
                'Create Invoice',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      // Bottom Navigation Bar
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
