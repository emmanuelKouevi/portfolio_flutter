import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdfx/pdfx.dart';
import 'package:portfolio_mobile/services/download_file.dart';
import 'package:portfolio_mobile/views/sections/my_cv_file.dart';

class AboutMeView extends StatelessWidget {
  const AboutMeView({super.key});

  @override
  Widget build(BuildContext context) {
    final title = Row(
      children: [
        IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const FaIcon(
              FontAwesomeIcons.arrowLeft,
              size: 20,
            )),
        const SizedBox(
          width: 10,
        ),
        Text(
          "À PROPOS",
          style: GoogleFonts.ubuntu(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ],
    );

    final description = Container(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText("""Bonjour. Je suis Ayite Emmanuel Kouevi , Développeur d'Application Web et Mobile. Grâce à mes expériences en tant que Développeur d’application et à ma formation en Réseaux et Génie Logiciel, je pense avoir pu acquérir les compétences nécessaires pour mener à bien certaines missions , trouver des solutions à différents problèmes dans ce domaine. Mon parcours m'a donc permis de développer mes qualités relationnelles et mes compétences telles que la capacité à travailler en équipe et le sens de l’organisation. Je conçois et réalise des applications web et mobiles de qualité."""
          , textStyle: GoogleFonts.ubuntu(
              fontSize: 16, color: Colors.black.withOpacity(0.9), letterSpacing: 1.5, wordSpacing: 4
          ), speed: const Duration(microseconds: 10000)),
        ],
        isRepeatingAnimation: false,
      ),
    );

    final downloadCvBtn = SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton.icon(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyCvFile()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black
          ),
          label: Text("Télécharger mon cv", style: GoogleFonts.ubuntu(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold
          ),)
      ),
    );

    final pdfController = PdfController(
      document: PdfDocument.openAsset('assets/documents/portfolioCv.pdf'),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 40, right: 20, left: 10),
        child: Column(
          children: [
            title,
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
