// import 'package:flutter/material.dart';
// import 'package:bank_app/assets/constants.dart';

// class TumHesaplar extends StatefulWidget {
//   const TumHesaplar({super.key});

//   @override
//   State<TumHesaplar> createState() => _TumHesaplarState();
// }

// class _TumHesaplarState extends State<TumHesaplar> {
//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     final height = MediaQuery.of(context).size.height;

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColors.primaryRed,
//         title: Text(
//           "Tüm Hesaplar",
//           style: TextStyle(fontSize: width * 0.05),
//         ),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           SizedBox(height: height * 0.015), // AppBar altı 1 cm boşluk

//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: width * 0.015),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: SizedBox(
//                     height: height * 0.07,
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: AppColors.primaryRed,
//                        shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(width * 0.05),
//                         ),
//                       ),
//                       onPressed: () {
//                         // Kırmızı buton aksiyonu
//                       },
//                       child: Text(
//                         "Kırmızı Buton",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: width * 0.04,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: width * 0.015), // İki buton arası yarım cm boşluk
//                 Expanded(
//                   child: SizedBox(
//                     height: height * 0.07,
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.grey[400],
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(width * 0.05),
//                         ),
//                       ),
//                       onPressed: () {
//                         // Gri buton aksiyonu
//                       },
//                       child: Text(
//                         "Gri Buton",
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: width * 0.04,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           Expanded(
//             child: Center(
//               child: Text(
//                 "Tüm Hesaplar İçeriği",
//                 style: TextStyle(fontSize: width * 0.045),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:bank_app/assets/constants.dart';

class TumHesaplar extends StatefulWidget {
  const TumHesaplar({super.key});

  @override
  State<TumHesaplar> createState() => _TumHesaplarState();
}

class _TumHesaplarState extends State<TumHesaplar> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryRed,
        title: Text(
          "Tüm Hesaplar",
          style: TextStyle(fontSize: width * 0.05),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.02,
          vertical: height * 0.015,
        ),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: height * 0.07,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryRed,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(width * 0.05),
                  ),
                ),
                onPressed: () {
                  // Kırmızı buton aksiyonu
                },
                child: Text(
                  "Banka Hesaplarım",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: width * 0.04,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.015), // Alt boşluk

            SizedBox(
              width: double.infinity,
              height: height * 0.07,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[400],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(width * 0.05),
                  ),
                ),
                onPressed: () {
                  // Gri buton aksiyonu
                },
                child: Text(
                  "Diğer Banka Hesaplarım",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: width * 0.04,
                  ),
                ),
              ),
            ),

            const Spacer(), // İçerik ortalansın
            Text(
              "Tüm Hesaplar İçeriği",
              style: TextStyle(fontSize: width * 0.045),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
