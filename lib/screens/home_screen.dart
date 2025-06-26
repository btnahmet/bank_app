import 'package:flutter/material.dart';
import 'package:bank_app/assets/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.primaryRed,
          foregroundColor: Colors.white,
          title: const Text('Ana Sayfa'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: GestureDetector(
                onTap: () {
                  // Profil sayfasına git veya alert göster vs.
                  // Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfileScreen()));
                },
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.white,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/profile_icon.png', // kendi resmini buraya koy
                      fit: BoxFit.cover,
                      width: 32,
                      height: 32,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            // 👇 Scrollable içerik
            SingleChildScrollView(
              padding: EdgeInsets.only(bottom: height * 0.1),
              child: Center(
                child: Container(
                  width: width * 0.85,
                  margin: const EdgeInsets.only(top: 40),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.lightRed,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.account_balance_wallet,
                          size: height * 0.08, color: AppColors.primaryRed),
                      const SizedBox(height: 16),
                      Text(
                        "Hoş Geldiniz!",
                        style: TextStyle(
                          fontSize: width * 0.06,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryRed,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Bakiye ve işlemlerinizi buradan takip edebilirsiniz.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: width * 0.04,
                          color: AppColors.textColor,
                        ),
                      ),
                      const SizedBox(height: 400), // örnek içerik
                    ],
                  ),
                ),
              ),
            ),

            // 👇 Alt sabit bar
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height * 0.09,
                decoration: BoxDecoration(
                  color: AppColors.primaryRed,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(16)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _BottomBarItem(
                        icon: Icons.home, label: "Ana Sayfa", onTap: () {}),
                    _BottomBarItem(
                        icon: Icons.file_copy, label: "Ürünler", onTap: () {}),
                    _BottomBarItem(
                        icon: Icons.swap_horiz,
                        label: "Transfer",
                        onTap: () {}),
                    _BottomBarItem(
                        icon: Icons.menu, label: "Profil", onTap: () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BottomBarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _BottomBarItem({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
