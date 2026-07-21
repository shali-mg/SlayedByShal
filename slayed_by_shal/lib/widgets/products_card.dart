import 'package:flutter/material.dart';
import 'package:slayed_by_shal/configs/colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.press,
  });

  final String image;
  final String title;
  final String price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 140,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: shadowColor.withOpacity(0.15),
              blurRadius: 8,
              offset: const Offset(3, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFEFEFF2),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(image, height: 132, fit: BoxFit.contain),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(fontFamily: "Avallon", fontSize: 15),
            ),
            const SizedBox(height: 5),
            Text(
              price,
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
