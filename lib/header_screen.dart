import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'configs/themes/app_colors.dart';

class HeaderScreen extends StatefulWidget {
  const HeaderScreen({Key? key}) : super(key: key);

  @override
  _HeaderScreenState createState() => _HeaderScreenState();
}

class _HeaderScreenState extends State<HeaderScreen> {
  double opacityBg = 0.0;

  double opacityBismillah = 0.0;

  double opacityTextHeader = 0.0;
  EdgeInsets paddingTextHeader = const EdgeInsets.only(top: 0);

  double opacityTheWedding = 0.0;

  double opacityWentyIan = 0.0;
  EdgeInsets paddingWentyIan = const EdgeInsets.only(top: 30);

  double opacityDate = 0.0;
  EdgeInsets paddingDate = const EdgeInsets.only(top: 30);

  void startAnimation() async {
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      opacityBg = 1;
    });
    await Future.delayed(const Duration(milliseconds: 700));
    setState(() {
      opacityBismillah = 1;
    });
    await Future.delayed(const Duration(milliseconds: 700));
    setState(() {
      opacityTextHeader = 1;
      paddingTextHeader = const EdgeInsets.only(top: 20);
    });
    await Future.delayed(const Duration(milliseconds: 700));
    setState(() {
      opacityTheWedding = 1;
    });
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      opacityWentyIan = 1;
      paddingWentyIan = EdgeInsets.zero;
    });
    await Future.delayed(const Duration(milliseconds: 300));
    setState(() {
      opacityDate = 1;
      paddingDate = EdgeInsets.zero;
    });
  }

  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 9 / 16,
      child: Container(
        width: double.infinity,
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/images/bg2.jpg'),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: Stack(
          children: [
            AnimatedOpacity(
              duration: const Duration(milliseconds: 700),
              opacity: opacityBg,
              child: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/bg2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              color: AppColors.textPrimary.withOpacity(0.3),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                AnimatedOpacity(
                  opacity: opacityBismillah,
                  duration: const Duration(milliseconds: 800),
                  child: Text(
                    'بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيم',
                    style: GoogleFonts.arefRuqaa(
                      fontSize: 30,
                      color: AppColors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                AnimatedOpacity(
                  opacity: opacityTextHeader,
                  duration: const Duration(milliseconds: 800),
                  child: AnimatedPadding(
                    padding: paddingTextHeader,
                    duration: const Duration(milliseconds: 800),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        "Dengan memohon Ridho & Rahmat Allah subhanahu wa ta'ala, kami mengundang bapak/ibu dan saudara/i dalam acara pernikahan kami",
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 14,
                          color: AppColors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // const SizedBox(
                //   height: 80,
                // ),
                // Text(
                //   'The Wedding of',
                //   style: GoogleFonts.greatVibes(
                //     fontSize: 30,
                //     fontWeight: FontWeight.normal,
                //     color: AppColors.white,
                //   ),
                //   textAlign: TextAlign.center,
                // ),
                // const SizedBox(
                //   height: 16,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text(
                //       'Wenty',
                //       style: GoogleFonts.croissantOne(
                //         fontSize: 60,
                //         fontWeight: FontWeight.normal,
                //         color: AppColors.primaryColor,
                //         letterSpacing: -3,
                //       ),
                //     ),
                //     const SizedBox(width: 3),
                //     Text(
                //       '&',
                //       style: GoogleFonts.playfairDisplay(
                //         fontSize: 40,
                //         fontWeight: FontWeight.bold,
                //         color: AppColors.white,
                //       ),
                //     ),
                //     const SizedBox(width: 3),
                //     Text(
                //       'Ian',
                //       style: GoogleFonts.croissantOne(
                //         fontSize: 60,
                //         fontWeight: FontWeight.normal,
                //         color: AppColors.primaryColor,
                //         letterSpacing: -3,
                //       ),
                //     ),
                //   ],
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                // Text(
                //   'Sabtu, 12 November 2022',
                //   style: GoogleFonts.playfairDisplay(
                //     fontSize: 20,
                //     color: AppColors.white,
                //   ),
                // ),
                // const SizedBox(
                //   height: 60,
                // ),
                // Stack(
                //   alignment: Alignment.topCenter,
                //   children: [
                //     Text(
                //       '“',
                //       style: GoogleFonts.playfairDisplay(
                //         fontSize: 60,
                //         fontWeight: FontWeight.normal,
                //         color: AppColors.primaryColor,
                //       ),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.fromLTRB(40, 50, 40, 8),
                //       child: Text(
                //         '"Dan Diantara tanda-tanda kekuasaan Allah ialah Diciptakan-Nya untukmu pasangan hidup dari jenismu sendiri supaya kamu merasa tentram disamping-Nya dan dijadikan-Nya rasa kasih sayang diantara kamu. Sesungguhnya yang demikian itu menjadi bukti kekuasaan Allah bagi kaum yang berfikir."',
                //         style: GoogleFonts.playfairDisplay(
                //           fontSize: 14,
                //           color: AppColors.white,
                //         ),
                //         textAlign: TextAlign.center,
                //       ),
                //     ),
                //   ],
                // ),
                // Text(
                //   '(QS. Ar- Rum 21)',
                //   style: GoogleFonts.playfairDisplay(
                //     fontSize: 13,
                //     color: AppColors.white,
                //   ),
                //   textAlign: TextAlign.center,
                // ),
                // const SizedBox(
                //   height: 80,
                // ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedOpacity(
                    duration: const Duration(seconds: 1),
                    opacity: opacityTheWedding,
                    child: Text(
                      'The Wedding of',
                      style: GoogleFonts.greatVibes(
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                        color: AppColors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 800),
                      opacity: opacityWentyIan,
                      child: AnimatedPadding(
                        duration: const Duration(milliseconds: 800),
                        padding: paddingWentyIan,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Wenty',
                              style: GoogleFonts.croissantOne(
                                fontSize: 60,
                                fontWeight: FontWeight.normal,
                                color: AppColors.primaryColor,
                                letterSpacing: -3,
                              ),
                            ),
                            const SizedBox(width: 3),
                            Text(
                              '&',
                              style: GoogleFonts.playfairDisplay(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: AppColors.white,
                              ),
                            ),
                            const SizedBox(width: 3),
                            Text(
                              'Ian',
                              style: GoogleFonts.croissantOne(
                                fontSize: 60,
                                fontWeight: FontWeight.normal,
                                color: AppColors.primaryColor,
                                letterSpacing: -3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 100,
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 800),
                      opacity: opacityDate,
                      child: AnimatedPadding(
                        duration: const Duration(milliseconds: 800),
                        padding: paddingDate,
                        child: Text(
                          'Sabtu, 12 November 2022',
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Stack(
                  //   alignment: Alignment.topCenter,
                  //   children: [
                  //     Text(
                  //       '“',
                  //       style: GoogleFonts.playfairDisplay(
                  //         fontSize: 60,
                  //         fontWeight: FontWeight.normal,
                  //         color: AppColors.primaryColor,
                  //       ),
                  //     ),
                  //     Padding(
                  //       padding: const EdgeInsets.fromLTRB(40, 50, 40, 8),
                  //       child: Text(
                  //         '"Dan Diantara tanda-tanda kekuasaan Allah ialah Diciptakan-Nya untukmu pasangan hidup dari jenismu sendiri supaya kamu merasa tentram disamping-Nya dan dijadikan-Nya rasa kasih sayang diantara kamu. Sesungguhnya yang demikian itu menjadi bukti kekuasaan Allah bagi kaum yang berfikir."',
                  //         style: GoogleFonts.playfairDisplay(
                  //           fontSize: 14,
                  //           color: AppColors.white,
                  //         ),
                  //         textAlign: TextAlign.center,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Text(
                  //   '(QS. Ar- Rum 21)',
                  //   style: GoogleFonts.playfairDisplay(
                  //     fontSize: 13,
                  //     color: AppColors.white,
                  //   ),
                  //   textAlign: TextAlign.center,
                  // ),
                  // const SizedBox(
                  //   height: 80,
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
