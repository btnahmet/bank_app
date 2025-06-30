import 'package:flutter/material.dart';
import 'package:bank_app/assets/constants.dart';

class TumMenu extends StatefulWidget {
  const TumMenu({super.key});

  @override
  State<TumMenu> createState() => _TumMenuState();
}

class _TumMenuState extends State<TumMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tüm Menü"),
        backgroundColor: AppColors.primaryRed,
      ),
      body: const Center(
        child: Text(
          "Buraya tüm menü içerikleri gelecek",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
