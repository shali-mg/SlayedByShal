import 'package:flutter/material.dart';
import 'package:slayed_by_shal/views/login.dart';

void main() {
  runApp(const SlayedByShal());
}

class SlayedByShal extends StatelessWidget {
  const SlayedByShal({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}
