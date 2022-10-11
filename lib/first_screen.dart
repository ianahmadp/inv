import 'dart:html';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import 'configs/themes/app_colors.dart';
import 'main_screen.dart';

class FirstScreen extends StatefulWidget {
  String? toName;

  FirstScreen({Key? key, this.toName}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  double opacityWeddingInvitation = 0.0;
  EdgeInsets paddingWeddingInvitation = const EdgeInsets.only(top: 0);

  double opacityWentyIan = 0.0;

  double opacityDear = 0.0;

  double opacityButton = 0.0;
  EdgeInsets paddingButton = const EdgeInsets.only(top: 30);

  void startAnimation() async {
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      paddingWeddingInvitation = const EdgeInsets.only(top: 30);
      opacityWeddingInvitation = 1;
    });
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      opacityWentyIan = 1;
    });
    await Future.delayed(const Duration(milliseconds: 300));
    setState(() {
      opacityDear = 1;
    });
    await Future.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacityButton = 1;
      paddingButton = EdgeInsets.zero;
    });
  }

  void toMainScreen() async {
    setState(() {
      paddingWeddingInvitation = const EdgeInsets.only(top: 0);
      opacityWeddingInvitation = 0;
    });
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      opacityWentyIan = 0;
    });
    await Future.delayed(const Duration(milliseconds: 300));
    setState(() {
      opacityDear = 0;
    });
    await Future.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacityButton = 0;
    });
    await Future.delayed(const Duration(seconds: 1));
    context.go('/main');
  }

  @override
  void initState() {
    super.initState();
    startAnimation();
  }

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
                Container(
                  height: 60,
                  margin: const EdgeInsets.only(bottom: 8),
                  child: AnimatedOpacity(
                    opacity: opacityWeddingInvitation,
                    duration: const Duration(milliseconds: 400),
                    child: AnimatedPadding(
                      padding: paddingWeddingInvitation,
                      duration: const Duration(seconds: 1),
                      child: Text(
                        'Wedding Invitation',
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: AppColors.white,
                          letterSpacing: 2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                AnimatedOpacity(
                  opacity: opacityWentyIan,
                  duration: const Duration(seconds: 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Wenty',
                        style: GoogleFonts.greatVibes(
                          fontSize: 60,
                          color: AppColors.white,
                        ),
                      ),
                      Text(
                        ' & ',
                        style: GoogleFonts.greatVibes(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      Text(
                        'Ian',
                        style: GoogleFonts.greatVibes(
                          fontSize: 60,
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                AnimatedOpacity(
                  opacity: opacityDear,
                  duration: const Duration(seconds: 2),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Dear,',
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 14,
                          color: AppColors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        widget.toName ?? 'Ian Ahmad P',
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                          letterSpacing: 1.0,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'you are invited',
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 14,
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: 160,
                  margin: EdgeInsets.only(top: 60),
                  child: Stack(
                    children: [
                      AnimatedOpacity(
                        opacity: opacityButton,
                        duration: const Duration(milliseconds: 400),
                        child: AnimatedPadding(
                          padding: paddingButton,
                          duration: const Duration(seconds: 1),
                          child: GestureDetector(
                            onTap: () => toMainScreen(),
                            child: Container(
                              height: 40,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: AppColors.white.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(22),
                                  border: Border.all(
                                      color: AppColors.white, width: 1)),
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
                        ),
                      ),
                    ],
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
