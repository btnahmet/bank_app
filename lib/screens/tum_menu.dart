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
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Tüm Menü",
            style: TextStyle(fontSize: width * 0.05),
          ),
          backgroundColor: AppColors.primaryRed,
        ),
        body: Padding(
          padding: EdgeInsets.all(width * 0.04),
          child: Column(
            children: [
              _buildMenuButton(
                icon: Icons.swap_horiz,
                title: "Para Transferleri",
                onPressed: () {},
                width: width,
                height: height,
              ),
              _buildMenuButton(
                icon: Icons.payment,
                title: "Ödemeler",
                onPressed: () {},
                width: width,
                height: height,
              ),
              _buildMenuButton(
                icon: Icons.bookmark,
                title: "Kayıtlı İşlemlerim",
                onPressed: () {},
                width: width,
                height: height,
              ),
              _buildMenuButton(
                icon: Icons.currency_exchange,
                title: "Döviz ve Altın",
                onPressed: () {},
                width: width,
                height: height,
              ),
              _buildMenuButton(
                icon: Icons.qr_code,
                title: "QR İşlemleri",
                onPressed: () {},
                width: width,
                height: height,
              ),
              _buildMenuButton(
                icon: Icons.store,
                title: "Üye İşyeri İşlemleri",
                onPressed: () {},
                width: width,
                height: height,
              ),
              _buildMenuButton(
                icon: Icons.account_balance,
                title: "Açık Bankacılık İşlemlerim",
                onPressed: () {},
                width: width,
                height: height,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuButton({
    required IconData icon,
    required String title,
    required VoidCallback onPressed,
    required double width,
    required double height,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: height * 0.008),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: EdgeInsets.symmetric(
              vertical: height * 0.02, horizontal: width * 0.03),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(width * 0.03),
          ),
          elevation: 2,
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            Icon(icon, color: AppColors.primaryRed, size: width * 0.07),
            SizedBox(width: width * 0.03),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: width * 0.04,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Icon(Icons.arrow_forward_ios,
                size: width * 0.035, color: Colors.black54),
          ],
        ),
      ),
    );
  }
}
