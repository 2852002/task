import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 1.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Quick Actions',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                    },
                    child: const Text(
                      'View more',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Wrap(
            spacing: 16, 
            runSpacing: 16, 
            children: [
              _buildAction(Icons.receipt, 'Create\nSale Invoice', context),
              _buildGap(),
              _buildAction(Icons.add_shopping_cart, 'Create\nPurchase', context),
              _buildGap(), 
              _buildAction(Icons.credit_card, 'Create\nCredit Note', context),
              _buildGap(), 
              _buildAction(Icons.local_shipping, 'Create\nChallan', context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAction(IconData icon, String label, BuildContext context) {
    return GestureDetector(
      onTap: () {
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
          Container(
            width: 30, 
            height: 45, 
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(color: Colors.black87, width: 1.5),
            ),
            child: Center(
              child: Icon(
                icon,
                size: 24, 
                color: const Color(0xFF13927F),
              ),
            ),
          ),
          const SizedBox(height: 8), 
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildGap() {
    return const SizedBox(height: 10); 
  }
}
