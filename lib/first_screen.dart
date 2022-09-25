import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'configs/themes/app_colors.dart';
import 'main_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1617872051806-e9e08b70d3af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80'),
          fit: BoxFit.cover,
        )),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              color: AppColors.textPrimary.withOpacity(0.6),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Dear,',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 16,
                    color: AppColors.white,
                  ),
                ),
                Text(
                  'Randyka Rusnian',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
                Text(
                  'you are invited',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 16,
                    color: AppColors.white,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'The Wedding Celebration of',
                    style: GoogleFonts.greatVibes(
                      fontSize: 44,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Wenty',
                      style: GoogleFonts.croissantOne(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                    ),
                    Text(
                      ' & ',
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    Text(
                      'Ian',
                      style: GoogleFonts.croissantOne(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        PageTransition(
                          child: const MainScreen(),
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(seconds: 2)
                        ));
                  },
                  child: Container(
                    height: 40,
                    width: 160,
                    margin: const EdgeInsets.only(top: 44),
                    decoration: BoxDecoration(
                        color: AppColors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: AppColors.white, width: 1)),
                    child: Center(
                      child: Text(
                        'Open Invitation',
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
