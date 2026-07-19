import 'package:flutter/material.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({super.key});

  @override
  State<SavedScreen> createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
    return const Text("My favorites");
  }
}
