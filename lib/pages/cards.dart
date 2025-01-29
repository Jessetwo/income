import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final String body;
  const MyCard(
      {super.key,
      required this.body,
      required this.color,
      required this.icon,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 178,
      height: 187,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: const Color(0xFF006633),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              body,
              style: const TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
