import 'package:flutter/material.dart';
import 'package:bank_app/assets/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.primaryRed,
          foregroundColor: Colors.white,
          title: const Text('Ana Sayfa'),
        ),
        body: const Center(
          child: Text(
            'Hoş geldiniz!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
