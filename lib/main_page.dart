import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'comment_view.dart';
import 'configs/themes/app_colors.dart';
import 'main.dart';
import 'maps_screen.dart';
import 'dart:js' as js;

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
            CovidView(),
            Container(
              margin: const EdgeInsets.only(top: 16),
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
              color: AppColors.backgroundPrimary.withOpacity(0.1),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Terima kasih,",
                    style: GoogleFonts.croissantOne(
                      fontSize: 16,
                      color: AppColors.primaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "atas semua ucapan dan doanya. Semoga berkenan hadir, sebab tiada kesan tanpa kehadiranmu.\n:)",
                    style: GoogleFonts.croissantOne(
                      fontSize: 12,
                      color: AppColors.primaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
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

class MempelaiView extends StatelessWidget {
  const MempelaiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.textPrimary.withOpacity(0.6),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Text(
                '“',
                style: GoogleFonts.playfairDisplay(
                  fontSize: 60,
                  fontWeight: FontWeight.normal,
                  color: AppColors.primaryColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 50, 24, 8),
                child: Text(
                  '"Dan Diantara tanda-tanda kekuasaan Allah ialah Diciptakan-Nya untukmu pasangan hidup dari jenismu sendiri supaya kamu merasa tentram disamping-Nya dan dijadikan-Nya rasa kasih sayang diantara kamu. Sesungguhnya yang demikian itu menjadi bukti kekuasaan Allah bagi kaum yang berfikir."',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 14,
                    color: AppColors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Text(
            '(QS. Ar- Rum 21)',
            style: GoogleFonts.playfairDisplay(
              fontSize: 13,
              color: AppColors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 80,
          ),
          _profile(
            'Wenty Meliany',
            'putri dari',
            'Bpk. Sarno &\nIbu. Titik Lestari',
            'assets/images/ava_wenty.png',
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              ' & ',
              style: GoogleFonts.playfairDisplay(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
          ),
          _profile(
            'Ian Ahmad Pramana',
            'putra dari',
            'Bpk. Edy Pramono &\nIbu. Juharini',
            'assets/images/ava_ian.png',
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  Widget _profile(String nama, label, orangtua, ava) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 160,
            width: 160,
            margin: const EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.white.withOpacity(0.5),
                width: 5,
              ),
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(ava),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            nama,
            style: GoogleFonts.croissantOne(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: AppColors.white,
            ),
          ),
          Container(
            height: 1,
            width: 80,
            margin: const EdgeInsets.only(top: 4, bottom: 4),
            color: AppColors.white.withOpacity(0.5),
          ),
          Text(
            label,
            style: GoogleFonts.playfairDisplay(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: AppColors.white,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            orangtua,
            style: GoogleFonts.croissantOne(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: AppColors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class TimeView extends StatelessWidget {
  const TimeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 50, right: 20, left: 20, bottom: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.primaryDarkColor.withOpacity(0.8),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Icon(Icons.date_range, color: AppColors.white.withOpacity(0.8)),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Waktu Acara',
            style: GoogleFonts.croissantOne(
              fontSize: 18,
              color: AppColors.white,
            ),
          ),
          Text(
            'Sabtu, 12 November 2022',
            style: GoogleFonts.croissantOne(
              fontSize: 26,
              color: AppColors.white,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 1,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 30, bottom: 30),
            color: AppColors.white.withOpacity(0.5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: _time('Akad Nikah', '14.00 - 15.00')),
              Expanded(child: _time('Resepsi', '16.00 - 21.00')),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget _time(String title, time) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: GoogleFonts.croissantOne(
            fontSize: 20,
            color: AppColors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(12, 4, 12, 6),
          margin: const EdgeInsets.only(top: 8),
          decoration: BoxDecoration(
              color: AppColors.textPrimary.withOpacity(0.2),
              borderRadius: BorderRadius.circular(30)),
          child: Text(
            time,
            style: GoogleFonts.croissantOne(
              fontSize: 16,
              color: AppColors.white,
              fontWeight: FontWeight.normal,
              letterSpacing: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}

class PlaceView extends StatelessWidget {
  const PlaceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.primaryDarkColor.withOpacity(0.8),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Icon(Icons.map, color: AppColors.white.withOpacity(0.8)),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Lokasi Acara',
            style: GoogleFonts.croissantOne(
              fontSize: 18,
              color: AppColors.white,
            ),
          ),
          Text(
            'Pokel Garden Resto',
            style: GoogleFonts.croissantOne(
              fontSize: 26,
              color: AppColors.white,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 1,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 30, bottom: 30),
            color: AppColors.white.withOpacity(0.5),
          ),
          Text(
            'Jl. Perjuagan, Kasemen, Kec. Kasemen, Kota Serang, Banten',
            style: GoogleFonts.playfairDisplay(
              fontSize: 16,
              color: AppColors.white,
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 40),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const SizedBox(
                height: 200,
                width: double.infinity,
                child: WebMap(),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              js.context.callMethod(
                  'open', ['https://goo.gl/maps/4CreNKFZQswPKgPCA']);
            },
            child: Container(
              height: 34,
              width: 120,
              decoration: BoxDecoration(
                  color: AppColors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: AppColors.white, width: 1)),
              child: Center(
                child: Text(
                  'Open Maps',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class NoteSectionMahaSuciView extends StatelessWidget {
  const NoteSectionMahaSuciView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Text(
          '“',
          style: GoogleFonts.playfairDisplay(
            fontSize: 60,
            fontWeight: FontWeight.normal,
            color: AppColors.primaryColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 50, 40, 8),
          child: Text(
            '"Maha Suci Allah yang telah menciptakan makhluk-Nya berpasang-pasangan. Ya Allah semoga ridho-Mu tercurah mengiringi pernikahan kami"',
            style: GoogleFonts.playfairDisplay(
              fontSize: 14,
              color: AppColors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class AmplopView extends StatelessWidget {
  const AmplopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primaryDarkColor.withOpacity(0.8),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.favorite, color: AppColors.white.withOpacity(0.8)),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Untuk mengirim Hadiah atau Amplop Digital silahkan klik tombol dibawah ini.",
            style: GoogleFonts.croissantOne(
              fontSize: 14,
              color: AppColors.white,
            ),
            textAlign: TextAlign.center,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                ),
                builder: (context) {
                  return ContainerScreen(child: const AmplopModal());
                },
              );
            },
            child: Container(
              height: 34,
              width: 200,
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: AppColors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: AppColors.white, width: 1)),
              child: Center(
                child: Text(
                  'Amplop Digital',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CovidView extends StatelessWidget {
  const CovidView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Selalu jaga kesehatan kamu, ya!",
            style: GoogleFonts.croissantOne(
              fontSize: 16,
              color: AppColors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/ic_cucitangan.png',
                height: 80,
              ),
              Image.asset(
                'assets/images/ic_pakaimasker.png',
                height: 80,
              ),
              Image.asset(
                'assets/images/ic_jagajarak.png',
                height: 80,
              ),
            ],
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/ic_tidaksalaman.png',
                height: 80,
              ),
              Image.asset(
                'assets/images/ic_handsanitizer.png',
                height: 80,
              ),
              Image.asset(
                'assets/images/ic_tidakberkerumun.png',
                height: 80,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class AmplopModal extends StatelessWidget {
  const AmplopModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
      ),
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 6,
            width: 75,
            margin: const EdgeInsets.only(bottom: 34, top: 8),
            decoration: BoxDecoration(
              color: AppColors.textPrimary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(3),
            ),
          ),
          Row(
            children: [
              _itemRekening(
                  "Wenty Meliany", "5875211568", 'assets/images/logo_bca.png'),
              _itemRekening(
                  "Ian Ahmad P", "0526919856", 'assets/images/logo_bni.png'),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(top: 30, bottom: 20),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: AppColors.primaryDarkColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(16)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Kirim hadiah ke alamat',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 16,
                    // color: AppColors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Perumahan Graha Cisait Blok A 22 No 15, RT 005 RW 006, Kec. Kragilan, Kab. Serang, Banten',
                  style: GoogleFonts.croissantOne(
                    fontSize: 14,
                    // color: AppColors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).padding.bottom,
          ),
        ],
      ),
    );
  }

  Widget _itemRekening(String name, number, logoBank) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 40,
            margin: const EdgeInsets.only(bottom: 8),
            child: Image.asset(logoBank),
          ),
          Text(
            number,
            style: GoogleFonts.croissantOne(
              fontSize: 16,
              letterSpacing: 1.5,
              // color: AppColors.white,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'a/n',
            style: GoogleFonts.playfairDisplay(
              fontSize: 16,
              // color: AppColors.white,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            name,
            style: GoogleFonts.croissantOne(
              fontSize: 16,
              // color: AppColors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}