import 'package:flutter/material.dart';

class MarketPrice extends StatelessWidget {
  const MarketPrice({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.grey.shade300, 
              padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01), 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      'Market Price',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.05,
                        overflow: TextOverflow.ellipsis, 
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: screenHeight * 0.01,
                      horizontal: screenWidth * 0.020,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4AD234),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      'Live',
                      style: TextStyle(color: Colors.white), 
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            _buildMarketInfo('Cashew Kernel', Icons.arrow_upward, Colors.green, screenWidth),
            _buildCustomDivider(),
            _buildMarketInfo('Cashew Kernel W 180', Icons.arrow_downward, Colors.red, screenWidth),
            _buildCustomDivider(),
            _buildMarketInfo('RCN Nigeria 48 lbs/NC 195', Icons.arrow_upward, Colors.green, screenWidth),
            _buildCustomDivider(),
            _buildMarketInfo('RCN India 49 lbs/NC 200', Icons.arrow_upward, Colors.green, screenWidth),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomDivider() {
    return Container(
      height: 1,
      color: Colors.grey.shade200,
    );
  }

  Widget _buildMarketInfo(String text, IconData icon, Color iconColor, double screenWidth) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              text,
              style: const TextStyle(fontSize: 13.6,)

            ),
          ),
          SizedBox(width: screenWidth * 0.02),
          Icon(
            icon,
            color: iconColor,
            size: 19,
          ),
        ],
      ),
    );
  }
}
