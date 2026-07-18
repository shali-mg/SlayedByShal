import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:slayed_by_shal/configs/colors.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
  final FocusNode _firstnameFocus = FocusNode();
  final FocusNode _lastnameFocus = FocusNode();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _phoneFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _confirmpasswordFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    _firstnameFocus.addListener(() {
      setState(() {});
    });
    _lastnameFocus.addListener(() {
      setState(() {});
    });
    _emailFocus.addListener(() {
      setState(() {});
    });
    _phoneFocus.addListener(() {
      setState(() {});
    });
    _passwordFocus.addListener(() {
      setState(() {});
    });
    _confirmpasswordFocus.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _firstnameFocus.dispose();
    _lastnameFocus.dispose();
    _emailFocus.dispose();
    _phoneFocus.dispose();
    _passwordFocus.dispose();
    _confirmpasswordFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/slayed2.png", height: 160, width: 160),
                const SizedBox(height: 20),
                Text(
                  "Create Account",
                  style: TextStyle(
                    fontFamily: "Avallon",
                    fontSize: 28,
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
                const SizedBox(height: 10),
                Text(
                  "Start Your Beauty Journey With Us!",
                  style: TextStyle(
                    fontFamily: "Avallon",
                    fontSize: 20,
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
                const SizedBox(height: 30),
                Container(
                  width: 500,
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: _firstnameFocus.hasFocus
                          ? fourthColor
                          : Colors.transparent,
                      width: 4,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: shadowColor,
                        blurRadius: 20,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: TextField(
                    focusNode: _firstnameFocus,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "First Name",
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 500,
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: _lastnameFocus.hasFocus
                          ? fourthColor
                          : Colors.transparent,
                      width: 4,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: shadowColor,
                        blurRadius: 20,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: TextField(
                    focusNode: _lastnameFocus,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Last Name",
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 500,
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: _emailFocus.hasFocus
                          ? fourthColor
                          : Colors.transparent,
                      width: 4,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: shadowColor,
                        blurRadius: 20,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: TextField(
                    focusNode: _emailFocus,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Email Address",
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 500,
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: _phoneFocus.hasFocus
                          ? fourthColor
                          : Colors.transparent,
                      width: 4,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: shadowColor,
                        blurRadius: 20,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: TextField(
                    focusNode: _phoneFocus,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Phone Number",
                      prefixIcon: Icon(Icons.phone),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 500,
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: _passwordFocus.hasFocus
                          ? fourthColor
                          : Colors.transparent,
                      width: 4,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: shadowColor,
                        blurRadius: 20,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: TextField(
                    focusNode: _passwordFocus,
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 500,
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: _confirmpasswordFocus.hasFocus
                          ? fourthColor
                          : Colors.transparent,
                      width: 4,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: shadowColor,
                        blurRadius: 20,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: TextField(
                    focusNode: _confirmpasswordFocus,
                    obscureText: _obscureConfirmPassword,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Confirm Password",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureConfirmPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureConfirmPassword = !_obscureConfirmPassword;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 60),
                GestureDetector(
                  onTap: () {
                    Get.toNamed("/login");
                  },
                  child: Container(
                    width: 300,
                    height: 60,
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: fourthColor,
                    ),
                    child: Center(
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(color: secondColor),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed("/login");
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: fourthColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 60),
                Image.asset("assets/est2026.png", height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
