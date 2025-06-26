import 'package:flutter/material.dart';
import 'package:bank_app/assets/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    final textScale = MediaQuery.of(context).textScaleFactor;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.primaryRed,
          foregroundColor: Colors.white,
          title: Text(
            'Ana Sayfa',
            style: TextStyle(fontSize: width * 0.05),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: width * 0.03),
              child: GestureDetector(
                onTap: () {
                  // Profil sayfasına yönlendirme
                },
                child: CircleAvatar(
                  radius: width * 0.045,
                  backgroundColor: Colors.white,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/profile_icon.png',
                      fit: BoxFit.cover,
                      width: width * 0.08,
                      height: width * 0.08,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Center(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(bottom: height * 0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: width,
                      padding: EdgeInsets.all(width * 0.06),
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Hesaplarım",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: width * 0.067,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  "Kredi Kartlarım",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: width * 0.063,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.02),

                          Text(
                            "Of/Trabzon",
                            style: TextStyle(
                              fontSize: width * 0.06,
                              fontWeight: FontWeight.w500,
                              color: AppColors.primaryRed,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          // Text(
                          //   "Vadesiz TL",
                          //   style: TextStyle(

                          //     fontSize: width * 0.045,
                          //     fontWeight: FontWeight.w500,
                          //   ),
                          // ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: width * 0.03,
                                vertical: height * 0.005),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(
                                  255, 173, 127, 42), // arka plan rengi
                              borderRadius: BorderRadius.circular(
                                  width * 0.02), // köşe yumuşatma
                            ),
                            child: Text(
                              "Vadesiz TL",
                              style: TextStyle(
                                fontSize: width * 0.045,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),

                          SizedBox(height: height * 0.01),
                          Text(
                            "TR12 0001 0000 1234 5678 9100 00",
                            style: TextStyle(
                              fontSize: width * 0.0531,
                            ),
                          ),
                          SizedBox(height: height * 0.025),
                          Text(
                            "Bakiye",
                            style: TextStyle(
                              fontSize: width * 0.042,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: height * 0.005),
                          Text(
                            "₺ 12.500,75",
                            style: TextStyle(
                              fontSize: width * 0.06,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.05),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height * 0.09,
                decoration: BoxDecoration(
                  color: AppColors.primaryRed,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(width * 0.04)),
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
    final width = MediaQuery.of(context).size.width;
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: width * 0.07),
            SizedBox(height: width * 0.01),
            Text(
              label,
              style: TextStyle(color: Colors.white, fontSize: width * 0.03),
            ),
          ],
        ),
      ),
    );
  }
}
