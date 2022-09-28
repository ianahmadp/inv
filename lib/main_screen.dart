import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'configs/themes/app_colors.dart';
import 'maps_screen.dart';

class MainScreen extends StatefulWidget {
   MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1523438885200-e635ba2c371e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHdlZGRpbmd8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60'),
          fit: BoxFit.cover,
        )),
        child: Stack(
          children: [
            Container(
              color: AppColors.textPrimary.withOpacity(0.8),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderView extends StatelessWidget {
  const HeaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 40,
        ),
        Text(
          'بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيم',
          style: GoogleFonts.arefRuqaa(
            fontSize: 30,
            color: AppColors.white,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
          child: Text(
            "Dengan memohon Ridho & Rahmat Allah subhanahu wa ta'ala, kami mengundang bapak/ibu dan saudara/i dalam acara pernikahan kami",
            style: GoogleFonts.playfairDisplay(
              fontSize: 14,
              color: AppColors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 80,
        ),
        Text(
          'The Wedding of',
          style: GoogleFonts.greatVibes(
            fontSize: 30,
            fontWeight: FontWeight.normal,
            color: AppColors.white,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
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
            Text(
              ' & ',
              style: GoogleFonts.playfairDisplay(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
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
        const SizedBox(
          height: 20,
        ),
        Text(
          'Sabtu, 12 November 2022',
          style: GoogleFonts.playfairDisplay(
            fontSize: 20,
            color: AppColors.white,
          ),
        ),
        const SizedBox(
          height: 60,
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
              padding: const EdgeInsets.fromLTRB(40, 50, 40, 8),
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
      ],
    );
  }
}

class MempelaiView extends StatelessWidget {
  const MempelaiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _profile(
          'Wenty Meliany',
          'putri dari',
          'Bpk. Sarno Winoto &\nIbu. Titik Lestari',
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
      ],
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
      margin: const EdgeInsets.only(top: 80, right: 20, left: 20, bottom: 20),
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
          Container(
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
                  return const AmplopModal();
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

class CommentView extends StatefulWidget {
  const CommentView({Key? key}) : super(key: key);

  @override
  _CommentViewState createState() => _CommentViewState();
}

class _CommentViewState extends State<CommentView> {
  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final commentController = TextEditingController();

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 24),
      decoration: const BoxDecoration(
        color: AppColors.primaryDarkColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24),
          topLeft: Radius.circular(24),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Tulis ucapan dan doa mu',
            style: GoogleFonts.croissantOne(
              fontSize: 18,
              color: AppColors.white,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Semoga doa yang tertulis senantiasa kembali kepada yang mendoakan dan dilipat gandakan oleh Allah. Amin yaa Rab.',
            style: GoogleFonts.playfairDisplay(
              fontSize: 14,
              color: AppColors.white,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Nama Lengkap',
            style: GoogleFonts.playfairDisplay(
              fontSize: 12,
              color: AppColors.white,
            ),
          ),
          const SizedBox(height: 5),
          TextFormField(
            controller: nameController,
            textCapitalization: TextCapitalization.sentences,
            autocorrect: false,
            style: GoogleFonts.playfairDisplay(
              fontSize: 14,
              color: AppColors.textPrimary,
            ),
            // maxLines: obscureText ? 1 : maxLines ?? 1,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.white.withOpacity(0.7),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              hintText: 'Tuliskan nama kamu',
              hintStyle: GoogleFonts.playfairDisplay(
                fontSize: 14,
                color: AppColors.textPrimary.withOpacity(0.5),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1, color: AppColors.white.withOpacity(0.2)),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: AppColors.white),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.redPrimary, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.redPrimary, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Ucapan / Doa',
            style: GoogleFonts.playfairDisplay(
              fontSize: 12,
              color: AppColors.white,
            ),
          ),
          const SizedBox(height: 5),
          TextFormField(
            controller: commentController,
            textCapitalization: TextCapitalization.sentences,
            autocorrect: false,
            style: GoogleFonts.playfairDisplay(
              fontSize: 14,
              color: AppColors.textPrimary,
            ),
            maxLines: 5,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.white.withOpacity(0.7),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              hintText: 'Tuliskan ucapan atau doa',
              hintStyle: GoogleFonts.playfairDisplay(
                fontSize: 14,
                color: AppColors.textPrimary.withOpacity(0.5),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1, color: AppColors.white.withOpacity(0.2)),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: AppColors.white),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.redPrimary, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.redPrimary, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
          Container(
            height: 46,
            margin: EdgeInsets.only(top: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.primaryDark2Color,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
                child: Text(
              'Kirim',
              style: GoogleFonts.playfairDisplay(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            )),
          ),
          const SizedBox(height: 40),
          Text(
            'Ucapan dan doa sahabat',
            style: GoogleFonts.croissantOne(
              fontSize: 18,
              color: AppColors.white,
            ),
          ),
          Text(
            'Terima kasih atas ucapan dan doa sahabat semuanya.',
            style: GoogleFonts.playfairDisplay(
              fontSize: 14,
              color: AppColors.white,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: MediaQuery.of(context).size.width,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => itemComment(),
            ),
          ),
        ],
      ),
    );
  }

  Widget itemComment() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: AppColors.textPrimary.withOpacity(0.1),
        width: 1,
      ))),
      child: Row(
        children: [
          const Icon(
            Icons.favorite,
            color: AppColors.primaryColor,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Randyka Rusnian',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 14,
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Alhamdulillah, semoga dilancarkan sampai hari H. Menjadi keluarga sakinah, mawaddah, warohmah. Ammin yaa robbal alamin.',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 14,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
