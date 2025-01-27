import 'package:flutter/material.dart';

class SnackBox extends StatelessWidget {
  final String title;
  final String size;
  final double price;
  final String imagePath;

  const SnackBox({
    required this.title,
    required this.size,
    required this.price,
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: 120,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Size: $size',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              '\$${price.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}