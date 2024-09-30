import 'package:flutter/material.dart';

class RecentActivities extends StatelessWidget {
  final TextStyle titleTextStyle = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  final TextStyle companyNameTextStyle = const TextStyle(
    fontSize: 13, 
    color: Colors.black,
  );

  final TextStyle amountTextStyle = const TextStyle(
    fontSize: 13, 
    color: Colors.black,
  );

  final TextStyle purchaseStatusTextStyle = const TextStyle(
    fontSize: 12, 
    color: Colors.black, 
  );

  final TextStyle dateTextStyle = const TextStyle(
    fontSize: 11, 
    color: Colors.black, 
  );

  const RecentActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
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
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recent Activities',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                _buildForwardArrow(),
              ],
            ),
            const SizedBox(height: 10),
            for (int i = 0; i < 3; i++)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Column for Company Name and Amount
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.person, 
                                size: 19,
                                color: Colors.black,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                'Company Name / Trade Name',
                                style: companyNameTextStyle, 
                              ),
                            ],
                          ),
                          Text(
                            '₹ 30,000',
                            style: amountTextStyle, 
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '#Purchase',
                          style: purchaseStatusTextStyle,
                        ),
                        Text(
                          'Today, 10:51',
                          style: dateTextStyle, 
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildForwardArrow() {
    return GestureDetector(
      onTap: () {
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(40),
        ),
        child: const Icon(
          size: 15,
          Icons.arrow_forward,
          color: Colors.black,
        ),
      ),
    );
  }
}
