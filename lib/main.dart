import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: NossaAppBar(), 
      body: Center()),
      
    );
  }
}

class NossaAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NossaAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Text('Lucas'),
      title: const Text('Nossa AppBar'),
      backgroundColor: Colors.green,
    );
  }
}
