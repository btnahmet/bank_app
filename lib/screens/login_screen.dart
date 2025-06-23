import 'package:flutter/material.dart';
import 'package:bank_app/assets/constants.dart';
import '../widgets/login_form.dart';
import 'register_screen.dart'; // 👈 yeni ekran

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.lightRed,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hoş Geldiniz",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryRed,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "HZL Bank'a giriş yapın.",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.textColor,
                    ),
                  ),
                  const SizedBox(height: 40),
                  const LoginForm(),
                  const SizedBox(height: 24),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const RegisterScreen()),
                        );
                      },
                      child: RichText(
                        text: TextSpan(
                          text: "Hesabınız yok mu? ",
                          style: TextStyle(color: AppColors.textColor),
                          children: [
                            TextSpan(
                              text: "Üye olun.",
                              style: TextStyle(
                                color: AppColors.primaryRed,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
