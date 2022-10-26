import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'configs/themes/app_colors.dart';
import 'main_page.dart';

class CommentView extends StatefulWidget {
  const CommentView({Key? key}) : super(key: key);

  @override
  _CommentViewState createState() => _CommentViewState();
}

class _CommentViewState extends State<CommentView> {
  final nameController = TextEditingController();
  final commentController = TextEditingController();

  late DatabaseReference _dbref;
  List<Comment>? listComment = [];

  @override
  void initState() {
    super.initState();
    _dbref = FirebaseDatabase.instance.ref();
    _dbref.onValue.listen((event) {
      final json = event.snapshot.value as Map;
      final reversed =
          Map.fromEntries(json.entries.map((e) => MapEntry(e.key, e.value)));
      listComment?.clear();
      for (var i in reversed.entries) {
        var name = i.key.toString().split('&&').last;
        setState(() {
          listComment?.add(Comment(name: name, body: i.value));
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
          InkWell(
            onTap: () {
              if (nameController.text.isNotEmpty &&
                  commentController.text.isNotEmpty) {
                _dbref
                    .child(
                        '${DateTime.now().toString().replaceAll('.', '')}&&${nameController.text}')
                    .set(commentController.text)
                    .then((value) {
                  setState(() {
                    nameController.clear();
                    commentController.clear();
                  });
                });
              }
            },
            child: Container(
              height: 46,
              margin: const EdgeInsets.only(top: 20),
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
          ),
          const SizedBox(height: 40),
          Text(
            'Ucapan dan doa',
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
              itemCount: listComment?.length ?? 0,
              itemBuilder: (context, index) => itemComment(listComment?[index]),
            ),
          ),
        ],
      ),
    );
  }

  Widget itemComment(Comment? comment) {
    return Container(
      padding: const EdgeInsets.all(16),
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
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  comment?.name ?? '-',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 14,
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  comment?.body ?? '-',
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
