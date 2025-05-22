import 'dart:io';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

class AboutMeView extends StatelessWidget {
  const AboutMeView({super.key});

  @override
  Widget build(BuildContext context) {
    final title = Text(
      "À PROPOS",
      style: GoogleFonts.montserrat(
          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
    );

    final description = Container(
      padding: const EdgeInsets.only( left: 3, right: 3),
      child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText("""Bonjour. Je suis Ayite Emmanuel Kouevi , Développeur d'Application Web et Mobile. Grâce à mes expériences en tant que Développeur d’application et à ma formation en Réseaux et Génie Logiciel, je pense avoir pu acquérir les compétences nécessaires pour mener à bien certaines missions , trouver des solutions à différents problèmes dans ce domaine. Mon parcours m'a donc permis de développer mes qualités relationnelles et mes compétences telles que la capacité à travailler en équipe et le sens de l’organisation. Je conçois et réalise des applications web et mobiles de qualité."""
          , textStyle: GoogleFonts.montserrat(
              fontSize: 16, color: Colors.black.withOpacity(0.9), letterSpacing: 1.5, wordSpacing: 4
          ), speed: const Duration(microseconds: 5000)),
        ],
        isRepeatingAnimation: false,
      ),
    );

    final downloadCvBtn = SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton.icon(
          onPressed: () async{
            /* Convertir mon cv se trouvant dans mes assets en bytes*/
            ByteData bytes = await rootBundle.load("assets/documents/portfolioCv.pdf");
            Uint8List bytesList = bytes.buffer.asUint8List();
            final directory = await getTemporaryDirectory();
            final file = File("${directory.path}/emmanuelKoueviCv.pdf");
            await file.writeAsBytes(bytesList);
            OpenFile.open(file.path);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black
          ),
          label: Text("Télécharger mon cv", style: GoogleFonts.montserrat(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold
          ),)
      ),
    );


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: title,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(right: 20, left: 10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Column(
                children: [
                  description,
                  const SizedBox(height: 20),
                  downloadCvBtn
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
