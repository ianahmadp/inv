import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'configs/themes/app_colors.dart';

class GeneratePage extends StatefulWidget {
  const GeneratePage({Key? key}) : super(key: key);

  @override
  _GeneratePageState createState() => _GeneratePageState();
}

class _GeneratePageState extends State<GeneratePage> {
  final nameController = TextEditingController();

  String text = "Kepada Yth.\n"
      "Bapak/Ibu/Saudara/i\n"
      "*Ian*\n\n"
      "السَّلاَمُ عَلَيْكُمْ وَرَحْمَةُ اللهِ وَبَرَكَاتُهُ \n"
      "Tanpa mengurangi rasa hormat, perkenankan kami mengundang Bapak/Ibu/Saudara/i, untuk menghadiri acara pernikahan kami.\n"
      "Berikut tautan untuk info lengkap dari acara kami:\n"
      "https://berkesaninvitation.com/nizar-saras/?to=Ian\n"
      "Merupakan suatu kebahagiaan bagi kami apabila Bapak/Ibu/Saudara/i, berkenan untuk hadir dan memberikan doa res.\n"
      "وَالسَّلاَمُ عَلَيْكُمْ وَرَحْمَةُ اللهِ وَبَرَكَاتُهُ\n";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Nama Lengkap',
                style: GoogleFonts.playfairDisplay(
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 5),
              TextFormField(
                onChanged: (value) {
                  setState(() {});
                },
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
                  hintText: 'Tuliskan nama',
                  hintStyle: GoogleFonts.playfairDisplay(
                    fontSize: 14,
                    color: AppColors.textPrimary.withOpacity(0.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1,
                        color: AppColors.textPrimary.withOpacity(0.2)),
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 1, color: AppColors.textPrimary),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  focusedErrorBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.redPrimary, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.redPrimary, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(24),
                margin: const EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: AppColors.textPrimary, width: 1)),
                child: Text("Kepada Yth.\n"
                    "Bapak/Ibu/Saudara/i\n"
                    "*${nameController.text}*\n\n"
                    "السَّلاَمُ عَلَيْكُمْ وَرَحْمَةُ اللهِ وَبَرَكَاتُهُ \n\n"
                    "Tanpa mengurangi rasa hormat, perkenankan kami mengundang Bapak/Ibu/Saudara/i, untuk menghadiri acara pernikahan kami. "
                    "Berikut tautan untuk info lengkap dari acara kami:\n\n"
                    "${Uri.base.origin}inv/#/to/${nameController.text.replaceAll(' ', '%20')}\n\n"
                    "Merupakan suatu kebahagiaan bagi kami apabila Bapak/Ibu/Saudara/i, berkenan untuk hadir dan memberikan doa restu.\n\n"
                    "وَالسَّلاَمُ عَلَيْكُمْ وَرَحْمَةُ اللهِ وَبَرَكَاتُهُ\n"),
              ),
              const SizedBox(height: 16,),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                          final url =
                              "${Uri.base.origin}inv/#/to/${nameController.text.replaceAll(' ', '%20')}";
                          Clipboard.setData(ClipboardData(text: url)).then((_) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("URL berhasil disalin")));
                          });
                        },
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Container(
                              color: AppColors.textPrimary.withOpacity(0.1),
                              height: 40,
                              child: const Center(child: Text('COPY URL'))),
                        ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        final text = "Kepada Yth.\n"
                            "Bapak/Ibu/Saudara/i\n"
                            "*${nameController.text}*\n\n"
                            "السَّلاَمُ عَلَيْكُمْ وَرَحْمَةُ اللهِ وَبَرَكَاتُهُ \n\n"
                            "Tanpa mengurangi rasa hormat, perkenankan kami mengundang Bapak/Ibu/Saudara/i, untuk menghadiri acara pernikahan kami. "
                            "Berikut tautan untuk info lengkap dari acara kami:\n\n"
                            "${Uri.base.origin}inv/#/to/${nameController.text.replaceAll(' ', '%20')}\n\n"
                            "Merupakan suatu kebahagiaan bagi kami apabila Bapak/Ibu/Saudara/i, berkenan untuk hadir dan memberikan doa restu.\n\n"
                            "وَالسَّلاَمُ عَلَيْكُمْ وَرَحْمَةُ اللهِ وَبَرَكَاتُهُ\n";
                          Clipboard.setData(ClipboardData(text: text)).then((_) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("Text berhasil disalin")));
                          });
                        },
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Container(
                              color: AppColors.textPrimary.withOpacity(0.1),
                              height: 40,
                              child: const Center(child: Text('COPY TEXT'))),
                        ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
