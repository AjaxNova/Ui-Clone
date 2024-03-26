import 'package:flutter/material.dart';

class CompaniesCard extends StatelessWidget {
  const CompaniesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/736x/a1/d5/af/a1d5afdace642c517d0cff0962a68679.jpg")),
          color: Colors.white,
          borderRadius: BorderRadius.circular(30)),
      height: 120,
      width: 180,
    );
  }
}
