import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'configs/themes/app_colors.dart';
import 'main_screen.dart';

class MainPage extends StatefulWidget {
  String? toName;

  MainPage({Key? key, this.toName}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  /// FIRST VIEW
  double opacityWeddingInvitation = 0.0;
  EdgeInsets paddingWeddingInvitation = const EdgeInsets.only(top: 0);

  double opacityWentyIan = 0.0;

  double opacityDear = 0.0;

  double opacityButton = 0.0;
  EdgeInsets paddingButton = const EdgeInsets.only(top: 20);

  bool isLoadingFirstView = true;

  void startAnimationFirstView() async {
    await Future.delayed(const Duration(seconds: 5));
    setState(() {
      isLoadingFirstView = false;
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

  bool isFirstOpen = true;
  double opacityFirstScreen = 1.0;

  void removeFirstScreen() async {
    setState(() {
      opacityFirstScreen = 0;
    });
    await Future.delayed(const Duration(milliseconds: 200));
    startAnimationMainView();
    setState(() {
      isFirstOpen = false;
    });
  }

  /// MAIN VIEW
  bool isLoadBgMain = false;
  double opacityBg = 0.0;

  double opacityBismillah = 0.0;

  double opacityTextHeader = 0.0;
  EdgeInsets paddingTextHeader = const EdgeInsets.only(top: 0);

  double opacityTheWedding = 0.0;

  double opacityWentyIanMain = 0.0;
  EdgeInsets paddingWentyIan = const EdgeInsets.only(top: 30);

  double opacityDate = 0.0;
  EdgeInsets paddingDate = const EdgeInsets.only(top: 30);

  void startAnimationMainView() async {
    setState(() {
      opacityBg = 1;
    });
    await Future.delayed(const Duration(milliseconds: 600));
    setState(() {
      opacityBismillah = 1;
    });
    await Future.delayed(const Duration(milliseconds: 600));
    setState(() {
      opacityTextHeader = 1;
      paddingTextHeader = const EdgeInsets.only(top: 20);
    });
    await Future.delayed(const Duration(milliseconds: 600));
    setState(() {
      opacityTheWedding = 1;
    });
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      opacityWentyIanMain = 1;
      paddingWentyIan = const EdgeInsets.only(top: 0);
      isLoadBgMain = true;
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
    startAnimationFirstView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MainView(),
          if (isFirstOpen) FirstView(),
          if (isLoadingFirstView) Center(child: IndicatorLoading()),
        ],
      ),
    );
  }

  Widget MainView() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      // color: AppColors.primaryDark2Color,
      decoration: BoxDecoration(
        color: AppColors.backgroundPrimary,
        image: !isLoadBgMain
            ? null
            : const DecorationImage(
                image: AssetImage('assets/images/bg3.jpg'),
                fit: BoxFit.cover,
              ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HeaderView(),
            MempelaiView(),
            TimeView(),
            PlaceView(),
            NoteSectionMahaSuciView(),
            AmplopView(),
            CommentView(),
          ],
        ),
      ),
    );
  }

  Widget HeaderView() {
    return AspectRatio(
      aspectRatio: 9 / 16,
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            AnimatedOpacity(
              duration: const Duration(milliseconds: 600),
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
              color: AppColors.textPrimary.withOpacity(0.4),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 16,
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
                      padding: const EdgeInsets.symmetric(horizontal: 24),
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
                    height: 80,
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 800),
                      opacity: opacityWentyIanMain,
                      child: AnimatedPadding(
                        duration: const Duration(milliseconds: 800),
                        padding: paddingWentyIan,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Wenty',
                              style: GoogleFonts.croissantOne(
                                fontSize: 54,
                                fontWeight: FontWeight.normal,
                                color: AppColors.primaryColor,
                                letterSpacing: -3,
                              ),
                            ),
                            const SizedBox(width: 3),
                            Text(
                              '&',
                              style: GoogleFonts.playfairDisplay(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: AppColors.white,
                              ),
                            ),
                            const SizedBox(width: 2),
                            Text(
                              'Ian',
                              style: GoogleFonts.croissantOne(
                                fontSize: 54,
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
                    height: 12,
                  ),
                  SizedBox(
                    height: 80,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget FirstView() {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 200),
      opacity: opacityFirstScreen,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/bg1.jpg'),
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
                      duration: const Duration(milliseconds: 800),
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
                      const SizedBox(width: 8),
                      Text(
                        '&',
                        style: GoogleFonts.greatVibes(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      const SizedBox(width: 4),
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
                  duration: const Duration(seconds: 1),
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
                  margin: const EdgeInsets.only(top: 60),
                  child: Stack(
                    children: [
                      AnimatedOpacity(
                        opacity: opacityButton,
                        duration: const Duration(milliseconds: 400),
                        child: AnimatedPadding(
                          padding: paddingButton,
                          duration: const Duration(seconds: 1),
                          child: GestureDetector(
                            onTap: () => removeFirstScreen(),
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

class IndicatorLoading extends StatelessWidget {
  Color color;

  IndicatorLoading({Key? key, this.color = AppColors.primaryColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 30,
      child: CircularProgressIndicator(
          strokeWidth: 3,
          valueColor: AlwaysStoppedAnimation<Color>(
            color,
          )),
    );
  }
}
