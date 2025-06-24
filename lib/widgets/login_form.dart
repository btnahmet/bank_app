import 'package:bank_app/assets/constants.dart';
import 'package:bank_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _tcController = TextEditingController();
  final _passwordController = TextEditingController();

 void _handleLogin() {
  final tc = _tcController.text.trim();
  final password = _passwordController.text;

  // Demo amaçlı sabit değerle eşleşme
  if (tc == "123456" && password == "1234") {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const HomeScreen()),
    );
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Geçersiz kimlik no veya şifre")),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _tcController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: "T.C. Kimlik No",
            filled: true,
            fillColor: AppColors.lightRed,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _passwordController,
          obscureText: true,
          decoration: InputDecoration(
            labelText: "Şifre",
            filled: true,
            fillColor: AppColors.lightRed,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryRed,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: _handleLogin,
            child: const Text("Giriş Yap", style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }
}
