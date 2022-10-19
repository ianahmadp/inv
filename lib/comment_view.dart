import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'configs/themes/app_colors.dart';

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
      decoration: BoxDecoration(
        color: AppColors.primaryDarkColor,
        borderRadius: BorderRadius.circular(24),
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
            margin: const EdgeInsets.only(top: 10, bottom: 16),
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListView.builder(
              padding: EdgeInsets.zero,
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