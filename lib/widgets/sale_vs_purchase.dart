import 'package:flutter/material.dart';

class SaleVsPurchase extends StatelessWidget {
  const SaleVsPurchase({super.key});

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Sale vs Purchase (August)',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              _buildForwardArrow(),
            ],
          ),
          const SizedBox(height: 16), 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: _buildSalePurchaseInfo('Total Sale', '₹ 0.00')),
              Expanded(child: _buildDivider()),
              Expanded(child: _buildSalePurchaseInfo('Total Purchase', '₹ 0.00')),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSalePurchaseInfo(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return SizedBox(
      height: 50, 
      child: VerticalDivider(
        thickness: 1,
        color: Colors.grey.shade400, 
        width: 20, 
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
          color: Colors.grey.shade300, 
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
