import 'package:get/get_navigation/get_navigation.dart';
import 'package:slayed_by_shal/views/home.dart';
import 'package:slayed_by_shal/views/login.dart';
import 'package:slayed_by_shal/views/registration.dart';

var routes = [
  GetPage(name: "/", page: () => LoginScreen()),
  GetPage(name: "/register", page: () => RegistrationScreen()),
  GetPage(name: "/home", page: () => HomeScreen()),
];
