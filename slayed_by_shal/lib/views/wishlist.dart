import 'package:flutter/material.dart';
import 'package:slayed_by_shal/configs/colors.dart';
import 'package:slayed_by_shal/views/dashboard.dart';
import 'package:slayed_by_shal/models/product.dart';
import 'package:slayed_by_shal/widgets/products_card.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _SavedPageState();
}

class _SavedPageState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Your Wishlist!",
          style: TextStyle(
            fontFamily: 'Avallon',
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: IconButton(
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DashboardScreen(),
                  ),
                );
                setState(() {});
              },
              icon: const Icon(Icons.add),
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: wishlist.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 0.65,
          ),
          itemBuilder: (context, index) {
            final product = wishlist[index];
            return ProductCard(
              image: product.image,
              title: product.title,
              price: product.price,
              press: () {},
              onFavoriteTap: () {
                setState(() {
                  wishlist.remove(product);
                });
              },
              onAddToCart: () {
                setState(() {
                  if (!cart.contains(product)) {
                    cart.add(product);
                  }
                });
              },
              isSaved: true,
            );
          },
        ),
      ),
    );
  }
}
