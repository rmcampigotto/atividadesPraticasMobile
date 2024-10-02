import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String title;
  final String description;
  final double saldo;

  const CardItem({super.key, required this.title, required this.description, required this.saldo});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(description),
            Text(saldo.toString()),
          ],
        ),
      ),
    );
  }
}
