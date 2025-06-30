// import 'package:flutter/material.dart';
// import 'package:bank_app/assets/constants.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final width = size.width;
//     final height = size.height;

//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: AppColors.background,
//         appBar: AppBar(
//           backgroundColor: AppColors.primaryRed,
//           foregroundColor: Colors.white,
//           title: Text(
//             'Ana Sayfa',
//             style: TextStyle(fontSize: width * 0.05),
//           ),
//           actions: [
//             Padding(
//               padding: EdgeInsets.only(right: width * 0.03),
//               child: GestureDetector(
//                 onTap: () {},
//                 child: CircleAvatar(
//                   radius: width * 0.045,
//                   backgroundColor: Colors.white,
//                   child: ClipOval(
//                     child: Image.asset(
//                       'assets/images/profile_icon.png',
//                       fit: BoxFit.cover,
//                       width: width * 0.08,
//                       height: width * 0.08,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         body: SingleChildScrollView(
//           padding: EdgeInsets.only(bottom: height * 0.1),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: height * 0.03),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: width * 0.05),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Text(
//                             "Hesaplarım",
//                             style: TextStyle(
//                               fontSize: width * 0.055,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                         Expanded(
//                           child: Text(
//                             "Kredi Kartlarım",
//                             textAlign: TextAlign.end,
//                             style: TextStyle(
//                               fontSize: width * 0.055,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: height * 0.015),
//                     Text(
//                       "Of/Trabzon",
//                       style: TextStyle(
//                         fontSize: width * 0.05,
//                         color: AppColors.primaryRed,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     SizedBox(height: height * 0.008),
//                     Container(
//                       padding: EdgeInsets.symmetric(
//                           horizontal: width * 0.025,
//                           vertical: height * 0.005),
//                       decoration: BoxDecoration(
//                         color: Color.fromARGB(255, 173, 127, 42),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Text(
//                         "Vadesiz TL",
//                         style: TextStyle(
//                           fontSize: width * 0.035,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: height * 0.01),
//                     Text(
//                       "TR12 0001 0000 1234 5678 9100 00",
//                       style: TextStyle(
//                         fontSize: width * 0.04,
//                       ),
//                     ),
//                     SizedBox(height: height * 0.02),
//                     Text(
//                       "Bakiye",
//                       style: TextStyle(
//                         fontSize: width * 0.038,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: height * 0.005),
//                     Text(
//                       "₺ 12.500,75",
//                       style: TextStyle(
//                         fontSize: width * 0.05,
//                         fontWeight: FontWeight.bold,
//                         color: AppColors.primaryRed,
//                       ),
//                     ),
//                     SizedBox(height: height * 0.03),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: AppColors.primaryRed,
//                             padding: EdgeInsets.symmetric(
//                                 vertical: height * 0.012,
//                                 horizontal: width * 0.06),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                           ),
//                           child: Text("Hesaplarım",
//                               style: TextStyle(fontSize: width * 0.035,

//                               )),
//                         ),
//                         ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: AppColors.primaryRed,
//                             padding: EdgeInsets.symmetric(
//                                 vertical: height * 0.012,
//                                 horizontal: width * 0.05),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                           ),
//                           child: Text("Hesap Hareketleri",
//                               style: TextStyle(fontSize: width * 0.035)),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: height * 0.03),
//                     Text(
//                       "Kısayollarım",
//                       style: TextStyle(
//                         fontSize: width * 0.045,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: height * 0.015),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         _ShortcutItem(icon: Icons.account_balance, label: "Varlıklarım"),
//                         _ShortcutItem(icon: Icons.history, label: "Son İşlemler"),
//                         _ShortcutItem(icon: Icons.qr_code, label: "QR ile Para Çek"),
//                         _ShortcutItem(icon: Icons.sync_alt, label: "Para Transferi"),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         bottomNavigationBar: BottomAppBar(
//           color: AppColors.primaryRed,
//           child: SizedBox(
//             height: height * 0.09,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 _BottomBarItem(icon: Icons.home, label: "Ana Sayfa", onTap: () {}),
//                 _BottomBarItem(icon: Icons.file_copy, label: "Ürünler", onTap: () {}),
//                 _BottomBarItem(icon: Icons.swap_horiz, label: "Transfer", onTap: () {}),
//                 _BottomBarItem(icon: Icons.menu, label: "Profil", onTap: () {}),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _BottomBarItem extends StatelessWidget {
//   final IconData icon;
//   final String label;
//   final VoidCallback onTap;

//   const _BottomBarItem({
//     required this.icon,
//     required this.label,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     return Expanded(
//       child: InkWell(
//         onTap: onTap,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(icon, color: Colors.white, size: width * 0.065),
//             SizedBox(height: width * 0.01),
//             Text(
//               label,
//               style: TextStyle(color: Colors.white, fontSize: width * 0.03),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _ShortcutItem extends StatelessWidget {
//   final IconData icon;
//   final String label;

//   const _ShortcutItem({required this.icon, required this.label});

//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     final height = MediaQuery.of(context).size.height;
//     return Expanded(
//       child: Container(
//         margin: EdgeInsets.symmetric(horizontal: width * 0.01),
//         padding: EdgeInsets.symmetric(vertical: height * 0.018),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(width * 0.04),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black12,
//               blurRadius: 4,
//               offset: Offset(0, 2),
//             ),
//           ],
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(icon, color: AppColors.primaryRed, size: width * 0.065),
//             SizedBox(height: height * 0.005),
//             Text(
//               label,
//               textAlign: TextAlign.center,
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//               style: TextStyle(
//                 fontSize: width * 0.028,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
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
          title: Text(
            'Ana Sayfa',
            style: TextStyle(fontSize: width * 0.05),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: width * 0.03),
              child: GestureDetector(
                onTap: () {},
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
        body: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: height * 0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 📌 AppBar altına boşluk
              Container(
                height: height * 0.15,
              ),
              SizedBox(height: height * 0.02),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Hesaplarım",
                            style: TextStyle(
                              fontSize: width * 0.055,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Kredi Kartlarım",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: width * 0.055,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.015),
                    Text(
                      "Of/Trabzon",
                      style: TextStyle(
                        fontSize: width * 0.05,
                        color: AppColors.primaryRed,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: height * 0.008),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.025, vertical: height * 0.005),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 173, 127, 42),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "Vadesiz TL",
                        style: TextStyle(
                          fontSize: width * 0.035,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      "TR12 0001 0000 1234 5678 9100 00",
                      style: TextStyle(
                        fontSize: width * 0.04,
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Text(
                      "Bakiye",
                      style: TextStyle(
                        fontSize: width * 0.038,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: height * 0.005),
                    Text(
                      "₺ 12.500,75",
                      style: TextStyle(
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryRed,
                      ),
                    ),
                    SizedBox(height: height * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primaryRed,
                            padding: EdgeInsets.symmetric(
                                vertical: height * 0.012,
                                horizontal: width * 0.06),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            "Hesaplarım",
                            style: TextStyle(
                                fontSize: width * 0.04,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primaryRed,
                            padding: EdgeInsets.symmetric(
                                vertical: height * 0.012,
                                horizontal: width * 0.05),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            "Hesap Hareketleri",
                            style: TextStyle(
                                fontSize: width * 0.04,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.03),
                    Text(
                      "Kısayollarım",
                      style: TextStyle(
                        fontSize: width * 0.045,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: height * 0.015),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _ShortcutItem(
                            icon: Icons.account_balance, label: "Varlıklarım"),
                        _ShortcutItem(
                            icon: Icons.history, label: "Son İşlemler"),
                        _ShortcutItem(
                            icon: Icons.qr_code, label: "QR ile Para Çek"),
                        _ShortcutItem(
                            icon: Icons.sync_alt, label: "Para Transferi"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: AppColors.primaryRed,
          child: SizedBox(
            height: height * 0.09,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _BottomBarItem(
                    icon: Icons.home, label: "Ana Sayfa", onTap: () {}),
                _BottomBarItem(
                    icon: Icons.file_copy, label: "Ürünler", onTap: () {}),
                _BottomBarItem(
                    icon: Icons.swap_horiz, label: "İşlemler", onTap: () {}),
                _BottomBarItem(icon: Icons.menu, label: "Profil", onTap: () {}),
              ],
            ),
          ),
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
            Icon(icon, color: Colors.white, size: width * 0.065),
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

class _ShortcutItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ShortcutItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: width * 0.01),
        padding: EdgeInsets.symmetric(vertical: height * 0.018),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(width * 0.04),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: AppColors.primaryRed, size: width * 0.065),
            SizedBox(height: height * 0.005),
            Text(
              label,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: width * 0.028,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
