import 'package:flutter/material.dart';

class TransactionsCard extends StatelessWidget {
  final String name;
  final String time;
  final String price;
  final String logo;
  const TransactionsCard(
      {super.key,
      required this.logo,
      required this.name,
      required this.price,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: const Color(0xFF393434).withOpacity(0.15), width: 0.8)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  logo,
                  width: 40,
                  height: 40,
                ),
                const SizedBox(
                  width: 4,
                ),
                //name
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      time,
                      style: const TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              width: 8,
            ),
            Row(
              children: [
                Text(
                  price,
                  style: const TextStyle(fontSize: 14),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
