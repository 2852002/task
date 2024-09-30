import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return AppBar(
      backgroundColor: Colors.white,
   elevation: 5,
      title: Row(
        children: [
          CircleAvatar(
               radius: screenWidth * 0.04,
            backgroundColor: Colors.teal,
            child: Text(
              'T',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.04,
              ),
            ),
          ),
        SizedBox(width: screenWidth * 0.03),
          Flexible(
            child: Text(
              'Mahe Retail & Wholesale store',
              style: TextStyle(fontSize: screenWidth * 0.035),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Icon(Icons.arrow_drop_down),
        ],
      ),
      actions: [
        Stack(
          children: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
             Positioned(
              right: screenWidth * 0.035, 
              top: screenWidth * 0.033, 
              child: Container(
                padding: EdgeInsets.all(screenWidth * 0.002), 
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(6),
                ),
                constraints: BoxConstraints(
                  minWidth: screenWidth * 0.025, 
                  minHeight: screenWidth * 0.025, 
                ),
              ),
            ),
          ],
        ),
        IconButton(
          icon: Icon(Icons.account_circle, size: screenWidth * 0.07),
          onPressed: () {},
        ),
      ],
    );
  }
}
