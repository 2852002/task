import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/header.dart';
import '../widgets/item_contribution_chart.dartitem_contribution_chart.dart';
import '../widgets/market_price_card.dart';
import '../widgets/quick_access.dart';
import '../widgets/quick_actions.dart';
import '../widgets/recent_activities.dart';
import '../widgets/sale_vs_purchase.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(),
            SizedBox(height: screenHeight * 0.02),
            const QuickActions(),
            SizedBox(height: screenHeight * 0.04),
            const SaleVsPurchase(),
            SizedBox(height: screenHeight * 0.02),
             const Row(
              children: [
                Expanded(child: QuickAccess()), 
                SizedBox(width: 12), 
                Expanded(child: MarketPrice()), 
              ],
            ),
        
            SizedBox(height: screenHeight * 0.02),
            const RecentActivities(),
            SizedBox(height: screenHeight * 0.02),
            const ItemContribution(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 1,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: [
              _buildBottomNavigationBarItem(0, Icons.home, 'Home'),
              _buildBottomNavigationBarItem(1, Icons.group, 'Parties'),
              _buildBottomNavigationBarItem(2, Icons.sell, 'Sale'),
              _buildBottomNavigationBarItem(3, Icons.shopping_cart, 'Purchase'),
              _buildBottomNavigationBarItem(4, Icons.menu, 'Menu'),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      int index, IconData icon, String label) {
    bool isSelected = _selectedIndex == index;

    return BottomNavigationBarItem(
      icon: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isSelected)
            Container(
              height: 4,
              width: 24,
              margin: const EdgeInsets.only(bottom: 4),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          Icon(icon, color: isSelected ? Colors.black : Colors.grey),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.black : Colors.grey,
              fontSize: MediaQuery.of(context).size.width * 0.03,
            ),
          ),
        ],
      ),
      label: '',
    );
  }
}
