import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: screenHeight * 0.15,
      decoration: BoxDecoration(
        color: const Color(0xFF1555DD),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(screenWidth * 0.04),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              '4.8',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: screenWidth * 0.06,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Star',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenWidth * 0.03,
                                  ),
                                ),
                                Text(
                                  'Rating',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenWidth * 0.03,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // Star icons on the next line
                        Row(
                          children: List.generate(
                            5,
                            (index) => Icon(Icons.star,
                                color: Colors.white, size: screenWidth * 0.05),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Rate Us Now On',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenWidth * 0.04),
                            ),
                            SizedBox(width: screenWidth * 0.02),
                            FaIcon(
                              FontAwesomeIcons.googlePlay,
                              size: screenHeight * 0.028,
                            ),
                            SizedBox(width: screenWidth * 0.02),
                            FaIcon(
                              FontAwesomeIcons.android,
                              color: Colors.white,
                              size: screenHeight * 0.028,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: screenWidth * 0.25,
                  decoration: const BoxDecoration(
                    color: Color(0xFF002B91),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Image.asset(
                        'assets/mobile.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
