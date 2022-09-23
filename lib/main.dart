import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_flutter_web/google_maps_flutter_web.dart';
import 'package:undangan/configs/themes/app_colors.dart';
import 'package:undangan/first_screen.dart';
import 'package:undangan/main_screen.dart';

import 'maps_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: MainPage() //,FirstPage() //
//         );
//   }
// }

// class FirstPage extends StatelessWidget {
//   const FirstPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       height: MediaQuery.of(context).size.height,
//       decoration: const BoxDecoration(
//           image: DecorationImage(
//         image: NetworkImage(
//             'https://images.unsplash.com/photo-1617872051806-e9e08b70d3af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80'),
//         fit: BoxFit.cover,
//       )),
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           Container(
//             color: AppColors.textPrimary.withOpacity(0.6),
//           ),
//           Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 'Dear,',
//                 style: GoogleFonts.playfairDisplay(
//                   fontSize: 16,
//                   color: AppColors.white,
//                 ),
//               ),
//               Text(
//                 'Randyka Rusnian',
//                 style: GoogleFonts.playfairDisplay(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: AppColors.white,
//                 ),
//               ),
//               Text(
//                 'you are invited',
//                 style: GoogleFonts.playfairDisplay(
//                   fontSize: 20,
//                   color: AppColors.white,
//                 ),
//               ),
//               const SizedBox(
//                 height: 40,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: Text(
//                   'The Wedding Celebration of',
//                   style: GoogleFonts.greatVibes(
//                     fontSize: 44,
//                     fontWeight: FontWeight.normal,
//                     color: AppColors.white,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Wenty',
//                     style: GoogleFonts.croissantOne(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: AppColors.white,
//                     ),
//                   ),
//                   Text(
//                     ' & ',
//                     style: GoogleFonts.playfairDisplay(
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                       color: AppColors.primaryColor,
//                     ),
//                   ),
//                   Text(
//                     'Ian',
//                     style: GoogleFonts.croissantOne(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: AppColors.white,
//                     ),
//                   ),
//                 ],
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const MainScreen(),
//                       ));
//                 },
//                 child: Container(
//                   height: 40,
//                   width: 160,
//                   margin: const EdgeInsets.only(top: 44),
//                   decoration: BoxDecoration(
//                       color: AppColors.white.withOpacity(0.3),
//                       borderRadius: BorderRadius.circular(22),
//                       border: Border.all(color: AppColors.white, width: 1)),
//                   child: Center(
//                     child: Text(
//                       'Open Invitation',
//                       style: GoogleFonts.playfairDisplay(
//                         fontSize: 16,
//                         fontWeight: FontWeight.normal,
//                         color: AppColors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MainPage extends StatelessWidget {
//   const MainPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         decoration: const BoxDecoration(
//             image: DecorationImage(
//           image: NetworkImage(
//               'https://images.unsplash.com/photo-1523438885200-e635ba2c371e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHdlZGRpbmd8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60'),
//           fit: BoxFit.cover,
//         )),
//         child: Stack(
//           children: [
//             Container(
//               color: AppColors.textPrimary.withOpacity(0.8),
//             ),
//             SizedBox(
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height,
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     const SizedBox(
//                       height: 40,
//                     ),
//                     Text(
//                       'بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيم',
//                       style: GoogleFonts.arefRuqaa(
//                         fontSize: 30,
//                         color: AppColors.white,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
//                       child: Text(
//                         "Dengan memohon Ridho & Rahmat Allah subhanahu wa ta'ala, kami mengundang bapak/ibu dan saudara/i dalam acara pernikahan kami",
//                         style: GoogleFonts.playfairDisplay(
//                           fontSize: 14,
//                           color: AppColors.white,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 80,
//                     ),
//                     Text(
//                       'The Wedding of',
//                       style: GoogleFonts.greatVibes(
//                         fontSize: 30,
//                         fontWeight: FontWeight.normal,
//                         color: AppColors.white,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(
//                       height: 16,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           'Wenty',
//                           style: GoogleFonts.croissantOne(
//                             fontSize: 60,
//                             fontWeight: FontWeight.normal,
//                             color: AppColors.primaryColor,
//                             letterSpacing: -3,
//                           ),
//                         ),
//                         Text(
//                           ' & ',
//                           style: GoogleFonts.playfairDisplay(
//                             fontSize: 40,
//                             fontWeight: FontWeight.bold,
//                             color: AppColors.white,
//                           ),
//                         ),
//                         Text(
//                           'Ian',
//                           style: GoogleFonts.croissantOne(
//                             fontSize: 60,
//                             fontWeight: FontWeight.normal,
//                             color: AppColors.primaryColor,
//                             letterSpacing: -3,
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     Text(
//                       'Sabtu, 12 November 2022',
//                       style: GoogleFonts.playfairDisplay(
//                         fontSize: 20,
//                         color: AppColors.white,
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 60,
//                     ),
//                     Stack(
//                       alignment: Alignment.topCenter,
//                       children: [
//                         Text(
//                           '“',
//                           style: GoogleFonts.playfairDisplay(
//                             fontSize: 60,
//                             fontWeight: FontWeight.normal,
//                             color: AppColors.primaryColor,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.fromLTRB(40, 50, 40, 8),
//                           child: Text(
//                             '"Dan Diantara tanda-tanda kekuasaan Allah ialah Diciptakan-Nya untukmu pasangan hidup dari jenismu sendiri supaya kamu merasa tentram disamping-Nya dan dijadikan-Nya rasa kasih sayang diantara kamu. Sesungguhnya yang demikian itu menjadi bukti kekuasaan Allah bagi kaum yang berfikir."',
//                             style: GoogleFonts.playfairDisplay(
//                               fontSize: 14,
//                               color: AppColors.white,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       ],
//                     ),
//                     Text(
//                       '(QS. Ar- Rum 21)',
//                       style: GoogleFonts.playfairDisplay(
//                         fontSize: 13,
//                         color: AppColors.white,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(
//                       height: 80,
//                     ),
//                     profile(
//                       'Wenty Meliany',
//                       'putri dari',
//                       'Bpk. Sarno Winoto &\nIbu. Titik Lestari',
//                       'assets/images/ava_wenty.png',
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         ' & ',
//                         style: GoogleFonts.playfairDisplay(
//                           fontSize: 36,
//                           fontWeight: FontWeight.bold,
//                           color: AppColors.white,
//                         ),
//                       ),
//                     ),
//                     profile(
//                       'Ian Ahmad Pramana',
//                       'putra dari',
//                       'Bpk. Edy Pramono &\nIbu. Juharini',
//                       'assets/images/ava_ian.png',
//                     ),
//                     Container(
//                       width: double.infinity,
//                       margin: const EdgeInsets.only(
//                           top: 80, right: 20, left: 20, bottom: 20),
//                       padding: const EdgeInsets.all(20),
//                       decoration: BoxDecoration(
//                         color: AppColors.primaryDarkColor.withOpacity(0.8),
//                         borderRadius: BorderRadius.circular(16),
//                       ),
//                       child: Column(
//                         children: [
//                           const SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             'The Wedding Day',
//                             style: GoogleFonts.croissantOne(
//                               fontSize: 18,
//                               color: AppColors.white,
//                             ),
//                           ),
//                           Text(
//                             'Sabtu, 12 November 2022',
//                             style: GoogleFonts.croissantOne(
//                               fontSize: 26,
//                               color: AppColors.white,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                           Container(
//                             height: 1,
//                             width: double.infinity,
//                             margin: const EdgeInsets.only(top: 30, bottom: 30),
//                             color: AppColors.white.withOpacity(0.5),
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Expanded(
//                                   child: time('AKAD NIKAH', '14.00 - 15.00')),
//                               Expanded(child: time('RESEPSI', '16.00 - 21.00')),
//                             ],
//                           ),
//                           const SizedBox(
//                             height: 40,
//                           ),
//                           Text(
//                             'Pokel Garden Resto',
//                             style: GoogleFonts.playfairDisplay(
//                               fontSize: 20,
//                               color: AppColors.white,
//                               fontWeight: FontWeight.normal,
//                             ),
//                           ),
//                           Text(
//                             'Jl. Perjuagan, Kasemen, Kec. Kasemen, Kota Serang, Banten',
//                             style: GoogleFonts.playfairDisplay(
//                               fontSize: 16,
//                               color: AppColors.white,
//                               fontWeight: FontWeight.normal,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                           Container(
//                             height: 34,
//                             width: 100,
//                             margin: const EdgeInsets.only(top: 16, bottom: 20),
//                             decoration: BoxDecoration(
//                                 color: AppColors.white.withOpacity(0.1),
//                                 borderRadius: BorderRadius.circular(22),
//                                 border: Border.all(
//                                     color: AppColors.white, width: 1)),
//                             child: Center(
//                               child: Text(
//                                 'Open Maps',
//                                 style: GoogleFonts.playfairDisplay(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.bold,
//                                   color: AppColors.white,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           ClipRRect(
//                             borderRadius: BorderRadius.circular(10),
//                             child: const SizedBox(
//                               height: 200,
//                               width: double.infinity,
//                               child: WebMap(),
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget time(String title, time) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Text(
//           title,
//           style: GoogleFonts.playfairDisplay(
//             fontSize: 20,
//             color: AppColors.white,
//             fontWeight: FontWeight.normal,
//           ),
//         ),
//         Container(
//           padding: const EdgeInsets.fromLTRB(12, 2, 12, 6),
//           margin: EdgeInsets.only(top: 8),
//           decoration: BoxDecoration(
//               color: AppColors.textPrimary.withOpacity(0.2),
//               borderRadius: BorderRadius.circular(30)),
//           child: Text(
//             time,
//             style: GoogleFonts.playfairDisplay(
//               fontSize: 16,
//               color: AppColors.white,
//               fontWeight: FontWeight.normal,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget profile(String nama, label, orangtua, ava) {
//     return Container(
//       width: double.infinity,
//       padding: const EdgeInsets.all(20),
//       margin: const EdgeInsets.symmetric(horizontal: 20),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Container(
//             height: 160,
//             width: 160,
//             margin: const EdgeInsets.only(bottom: 8),
//             decoration: BoxDecoration(
//               border: Border.all(
//                 color: AppColors.white.withOpacity(0.5),
//                 width: 5,
//               ),
//               shape: BoxShape.circle,
//               image: DecorationImage(
//                 image: AssetImage(ava),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Text(
//             nama,
//             style: GoogleFonts.croissantOne(
//               fontSize: 20,
//               fontWeight: FontWeight.normal,
//               color: AppColors.white,
//             ),
//           ),
//           Container(
//             height: 1,
//             width: 80,
//             margin: const EdgeInsets.only(top: 4, bottom: 4),
//             color: AppColors.white.withOpacity(0.5),
//           ),
//           Text(
//             label,
//             style: GoogleFonts.playfairDisplay(
//               fontSize: 14,
//               fontWeight: FontWeight.normal,
//               color: AppColors.white,
//             ),
//           ),
//           const SizedBox(
//             height: 4,
//           ),
//           Text(
//             orangtua,
//             style: GoogleFonts.croissantOne(
//               fontSize: 12,
//               fontWeight: FontWeight.normal,
//               color: AppColors.white,
//             ),
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     );
//   }
// }
