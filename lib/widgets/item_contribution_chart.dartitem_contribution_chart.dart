import 'package:flutter/material.dart';

class ItemContribution extends StatelessWidget {
  const ItemContribution({super.key});

  @override
  Widget build(BuildContext context) {
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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Item Contribution (Sale)',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                _buildForwardArrow(),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildColoredContainer(Colors.blue, 'Raw Cashew nut (RCN)'),
                      _buildColoredContainer(Colors.lightBlue, 'Cashew Kernel (RCN)'),
                      _buildColoredContainer(Colors.purple.shade500, 'Cashew Powder (CP)'),
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: CustomPaint(
                    painter: MultiColorCircularProgressPainter(progress: 0.99),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColoredContainer(Color color, String text) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          color: color,
        ),
        const SizedBox(width: 8), 
        Text(text, style: const TextStyle(color: Colors.black)),
      ],
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

class MultiColorCircularProgressPainter extends CustomPainter {
  final double progress;

  MultiColorCircularProgressPainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8;

    final Rect rect = Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: size.width / 2);

    List<Color> colors = [
      Colors.blue,
      Colors.lightBlue,
      Colors.purple,
    ];
    double totalSegments = colors.length.toDouble();
    double sweepAngle = (progress * 2 * 3.1415926535897932) / totalSegments;

    double startAngle = -3.1415926535897932 / 2; 

    for (Color color in colors) {
      paint.color = color;

      canvas.drawArc(
        rect,
        startAngle,
        sweepAngle,
        false,
        paint,
      );
      startAngle += sweepAngle;
    }
    final Paint fillPaint = Paint()
      ..color = Colors.transparent 
      ..style = PaintingStyle.fill;

    canvas.drawCircle(Offset(size.width / 2, size.height / 2), size.width / 2 - 4, fillPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; 
  }
}
