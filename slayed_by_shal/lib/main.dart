import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:slayed_by_shal/configs/routes.dart';
import 'package:slayed_by_shal/views/login.dart';
import 'package:slayed_by_shal/views/registration.dart';

void main() {
  runApp(const SlayedByShal());
}

class SlayedByShal extends StatelessWidget {
  const SlayedByShal({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      initialRoute: "/",
      getPages: routes,
    );
  }
}
