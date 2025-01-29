import 'package:flutter/material.dart';
import 'package:income/pages/cards.dart';
import 'package:income/pages/transactions.dart'; // Ensure this file exists or replace it with appropriate imports.

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0; // Track the selected tab index

  // List of pages for the bottom navigation tabs
  final List<Widget> _pages = [
    HomeScreen(), // Replace these with your actual widgets or pages
    const Center(child: Text('Services Page')),
    const Center(child: Text('Transactions Page')),
    const Center(child: Text('Profile Page')),
    const Center(child: Text('Refer Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Highlight the selected tab
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the selected tab index
          });
        },
        backgroundColor: Colors.green, // Set the background color to green
        selectedItemColor:
            Colors.white, // Set the selected item's color to white
        unselectedItemColor: Colors.white
            .withOpacity(0.7), // Slightly faded white for unselected items
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.more), label: 'Services'),
          BottomNavigationBarItem(
              icon: Icon(Icons.money), label: 'Transactions'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Refer'),
        ],
      ),
      body: _pages[_currentIndex], // Dynamically switch the body content
    );
  }
}

// Separate HomeScreen widget to house your existing code
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            // Header Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/profile.png', // Ensure the path is correct
                      width: 34,
                      height: 34,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      "Hi John",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Icon(Icons.headphones),
                    SizedBox(width: 10),
                    Icon(Icons.notifications),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32),
            // Balance Card
            Container(
              width: double.infinity,
              height: 136,
              decoration: BoxDecoration(
                color: const Color(0xFF006633),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Available Balance',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'N7,500',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  GestureDetector(
                    onTap: () {
                      // Add your functionality here
                    },
                    child: Container(
                      width: 150,
                      height: 44,
                      decoration: BoxDecoration(
                        color: const Color(0xFFDCF0AB),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          'Add Money',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // Mobile Top-Up Section
            const Row(
              children: [
                Text(
                  'Mobile Top Up',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                Container(
                  width: 148,
                  height: 53,
                  decoration: BoxDecoration(
                    color: const Color(0xFF9CECB5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.call),
                        SizedBox(width: 8),
                        Text(
                          'Airtime',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 14),
                Container(
                  width: 148,
                  height: 53,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE0AD0F).withOpacity(0.75),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.wifi),
                        SizedBox(width: 8),
                        Text(
                          'Mobile Data',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            // Other Services Section
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Other Services',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      'View All',
                      style: TextStyle(fontSize: 14, color: Color(0xFF006633)),
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                      color: Color(0xFF006633),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MyCard(
                    body:
                        'Pay your Electricity bills and Cable TV subscription anywhere, anytime.',
                    color: Color(0xFFF3D5A3),
                    icon: Icons.payment,
                    title: 'Bills Payment',
                  ),
                  SizedBox(width: 24),
                  MyCard(
                    body: 'Explore over 100 Local and international flights.',
                    color: Color(0xFFDCF0AB),
                    icon: Icons.flight,
                    title: 'Book a flight',
                  ),
                  SizedBox(width: 24),
                  MyCard(
                    body: 'Convert Airtime and Mobile data cash instantly.',
                    color: Color(0xFFF0E68C),
                    icon: Icons.currency_exchange,
                    title: 'Convert',
                  ),
                  SizedBox(width: 24),
                  MyCard(
                    body: 'Send SMS to customers faster and cheaper.',
                    color: Color(0xFFBCDD6A),
                    icon: Icons.message,
                    title: 'Bulk SMS',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transactions',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      'View All',
                      style: TextStyle(fontSize: 14, color: Color(0xFF006633)),
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                      color: Color(0xFF006633),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(
              height: 16,
            ),
            const TransactionsCard(
              logo: 'assets/glo.png',
              price: 'N100.00',
              time: 'Just Now',
              name: "Glo airtime",
            ),

            const SizedBox(
              height: 16,
            ),
            const TransactionsCard(
              logo: 'assets/airtel.png',
              price: 'N1000.00',
              time: 'Yesterday',
              name: "Airtel Airtime",
            ),

            const SizedBox(
              height: 16,
            ),
            const TransactionsCard(
              logo: 'assets/mtn.png',
              price: 'N1000.00',
              time: '20-01-2025',
              name: "MTN Airtime",
            ),
            const SizedBox(
              height: 16,
            ),
            const TransactionsCard(
              logo: 'assets/9mobile.png',
              price: 'N1000.00',
              time: '20-01-2025',
              name: "9Mobile Airtime",
            )
          ],
        ),
      ),
    );
  }
}
