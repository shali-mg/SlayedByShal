import 'package:flutter/material.dart';
import 'package:slayed_by_shal/configs/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slayed By Shal"),
        backgroundColor: primaryColor,
        foregroundColor: secondColor,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.logout_rounded)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/slayed.png", height: 200),
            const SizedBox(height: 20),
            Text(
              "Enter your username",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: secondColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
