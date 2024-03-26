import 'package:flutter/material.dart';

class TopCard extends StatelessWidget {
  final String text;
  final String count;
  final Color cardColor;
  final Color badgeColor;
  const TopCard(
      {super.key,
      required this.count,
      required this.text,
      required this.cardColor,
      required this.badgeColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: cardColor, borderRadius: BorderRadius.circular(10)),
      width: size.width / 2.2,
      height: 75,
      child: SizedBox(
        width: 80,
        child: ListTile(
          leading: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 100),
            child: Text(
              text,
              style: const TextStyle(fontSize: 13, color: Colors.black),
            ),
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: SizedBox(
              width: 22,
              height: 22,
              child: Badge(
                label: Text(
                  count,
                  style: const TextStyle(fontSize: 11, color: Colors.black),
                ),
                smallSize: 23,
                backgroundColor: badgeColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
