import 'package:flutter/material.dart';
import 'package:slayed_by_shal/configs/colors.dart';
import 'package:slayed_by_shal/models/product.dart';
import 'package:slayed_by_shal/widgets/cartitem.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartPageState();
}

class _CartPageState extends State<CartScreen> {
  @override
  int get totalPrice {
    int total = 0;

    for (var product in cart) {
      total += int.parse(product.price.replaceAll(" ksh", ""));
    }

    return total;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Your Cart!",
          style: TextStyle(
            fontFamily: "Avallon",
            fontSize: 24,
            color: Colors.white,
            shadows: [
              Shadow(
                color: shadowColor,
                offset: const Offset(5, 5),
                blurRadius: 10,
              ),
            ],
          ),
        ),
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cart.length,
                itemBuilder: (context, index) {
                  final product = cart[index];
                  return CartItem(
                    image: product.image,
                    title: product.title,
                    price: product.price,
                    remove: () {
                      setState(() {
                        cart.remove(product);
                      });
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: shadowColor.withOpacity(0.15),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Total",
                        style: TextStyle(fontSize: 18, fontFamily: "Avallon"),
                      ),
                      Text(
                        "$totalPrice ksh",
                        style: const TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        // go checkout page
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        "Checkout",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Avallon",
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
