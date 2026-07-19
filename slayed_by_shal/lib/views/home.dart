import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:slayed_by_shal/configs/colors.dart';
import 'package:slayed_by_shal/views/cart.dart';
import 'package:slayed_by_shal/views/dashboard.dart';
import 'package:slayed_by_shal/views/profile.dart';
import 'package:slayed_by_shal/views/saved.dart';

var screens = [DashboardScreen(), SavedScreen(), CartScreen(), ProfileScreen()];
int position = 0;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: position,
        onTap: (index) {
          setState(() {
            position = index;
          });
        },
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: fourthColor,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("Saved"),
            selectedColor: fourthColor,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            title: Text("Cart"),
            selectedColor: fourthColor,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: fourthColor,
          ),
        ],
      ),
      body: screens[position],
    );
  }
}
